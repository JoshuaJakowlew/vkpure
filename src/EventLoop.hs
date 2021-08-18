{-# LANGUAGE RecordWildCards #-}

module EventLoop
  ( EventDispatcher(..)
  , EventQueue
  , EventLoopFlag
  , EventLoop(..)
  , pushEvent
  , readEvent
  , pushEventIO
  , readEventIO
  , runEventLoop
  , stopEventLoop
  ) where
  
import Control.Concurrent
import Control.Monad ( when, void )
import UnliftIO.STM

class EventDispatcher a where
  dispatch :: a -> IO ()
  dispatchWithState :: EventLoop a -> a -> IO ()
  dispatchWithState s a = dispatch a

type EventQueue a = TQueue a

type EventLoopFlag = MVar Bool

data EventLoop a = EventLoop
  { queue :: EventQueue a
  , flag  :: EventLoopFlag
  }

pushEvent :: EventDispatcher a => EventQueue a -> a -> STM ()
pushEvent = writeTQueue

readEvent :: EventDispatcher a => EventQueue a -> STM a
readEvent = readTQueue

pushEventIO :: EventDispatcher a => EventQueue a -> a -> IO ()
pushEventIO q e = atomically $ pushEvent q e

readEventIO :: EventDispatcher a => EventQueue a -> IO a
readEventIO q = atomically $ readEvent q

runEventLoop :: EventDispatcher a => IO (EventLoop a)
runEventLoop = do
  state <- newEventLoop
  forkIO $ eventLoop state
  pure state

stopEventLoop :: EventLoopFlag -> IO ()
stopEventLoop flag = do
  _ <- takeMVar flag
  putMVar flag False

processEvent :: EventDispatcher a => EventLoop a -> IO ()
processEvent state@EventLoop{..} = do
  e <- atomically $ readEvent queue
  void $ forkIO $ dispatchWithState state e

newEventLoop :: EventDispatcher a => IO (EventLoop a)
newEventLoop = do
  queue <- newEventQueue
  flag <- newMVar True
  pure EventLoop{..}

newEventQueue :: EventDispatcher a => IO (EventQueue a)
newEventQueue = newTQueueIO

eventLoop :: EventDispatcher a => EventLoop a -> IO ()
eventLoop state@EventLoop{..} = do
  shouldRun <- readMVar flag
  when shouldRun $ do
    processEvent state
    eventLoop state

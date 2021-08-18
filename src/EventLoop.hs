{-# LANGUAGE RecordWildCards #-}

module EventLoop where
  
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

newEventQueue :: EventDispatcher a => IO (EventQueue a)
newEventQueue = newTQueueIO

pushEvent :: EventDispatcher a => EventQueue a -> a -> STM ()
pushEvent = writeTQueue

readEvent :: EventDispatcher a => EventQueue a -> STM a
readEvent = readTQueue

processEvent :: EventDispatcher a => EventLoop a -> IO ()
processEvent state@EventLoop{..} = do
  e <- atomically $ readEvent queue
  void $ forkIO $ dispatchWithState state e

runEventLoop :: EventDispatcher a => IO (EventLoop a)
runEventLoop = do
  state <- newEventLoop
  forkIO $ eventLoop state
  pure state

newEventLoop :: EventDispatcher a => IO (EventLoop a)
newEventLoop = do
  queue <- newEventQueue
  flag <- newMVar True
  pure EventLoop{..}

eventLoop :: EventDispatcher a => EventLoop a -> IO ()
eventLoop state@EventLoop{..} = do
  shouldRun <- readMVar flag
  when shouldRun $ do
    processEvent state
    eventLoop state

stopEventLoop :: MVar Bool -> IO ()
stopEventLoop flag = do
  _ <- takeMVar flag
  putMVar flag False

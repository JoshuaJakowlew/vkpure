{-# LANGUAGE RecordWildCards #-}

module EventLoop where

import Control.Monad.IO.Class
import Control.Monad
import Control.Concurrent.MVar
import Control.Concurrent (threadDelay, forkIO, ThreadId)
import Control.Exception hiding (handle)
import UnliftIO.STM
import UnliftIO.Async
import System.IO
import Control.Monad (join, forever)

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

-- Testing code

doStuff :: IO ()
doStuff = do
  hSetBuffering stdout LineBuffering
  EventLoop{..} <- runEventLoop
  forever $ do
    x <- getLine
    atomically $ pushEvent queue x

instance EventDispatcher String where
  dispatch "ok"  = action  "ok"
  dispatch _ = actionE "unknown"

  dispatchWithState EventLoop{..} "stop" = actionStop flag "stop"
  dispatchWithState _ x = dispatch x

action :: String -> IO ()
action e = do
  putStrLn $ "Start action: " ++ e
  threadDelay $ 3 * 10^6
  print $ "Finish action: " ++ e

actionE :: String -> IO ()
actionE e = do
  putStrLn $ "Start action: " ++ e
  threadDelay $ 3 * 10^6
  error "Ooops!"
  print $ "Finish action: " ++ e

actionStop :: MVar Bool -> String -> IO ()
actionStop f e = do
  putStrLn $ "Start action: " ++ e
  threadDelay $ 3 * 10^6
  stopEventLoop f
  print $ "Finish action: " ++ e

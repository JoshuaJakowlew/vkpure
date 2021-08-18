{-# LANGUAGE RecordWildCards #-}

module Main where

import Control.Monad ( when, forever, void, join, forever )
import Control.Concurrent (threadDelay, forkIO, ThreadId)
import UnliftIO.STM ( atomically )
import System.IO

import EventLoop

main :: IO ()
main = doStuff

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

actionStop :: EventLoopFlag -> String -> IO ()
actionStop f e = do
  putStrLn $ "Start action: " ++ e
  stopEventLoop f
  print $ "Finish action: " ++ e
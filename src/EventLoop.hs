module EventLoop where

import Data.Map.Strict ( (!?), delete, empty, insertWith, Map )
import Control.Monad.IO.Class
import Control.Concurrent (threadDelay, forkIO)
import UnliftIO.STM
import UnliftIO.Async
import System.IO
import Control.Exception (SomeException, catch)
import Control.Monad (join, forever)

class Event a where
  dispatch :: a -> IO ()

type EventQueue a = TQueue a

newEventQueue :: IO (EventQueue String) 
newEventQueue = atomically newTQueue

pushEvent :: Event a => EventQueue a -> a -> STM ()
pushEvent = writeTQueue

readEvent :: Event a => EventQueue a -> STM a 
readEvent = readTQueue

processEvent :: (Event a, Ord a) => EventQueue a -> IO ()
processEvent q = do
  e <- atomically $ readEvent q
  forkIO $ dispatch e
  pure ()

-- Testing code

instance Event String where
  dispatch "0" = action "0"
  dispatch xs = actionE xs

action :: String -> IO ()
action e = do
  putStrLn $ "Start " ++ e
  threadDelay $ 3 * 10^6
  print $ e ++ " finished"

actionE :: String -> IO ()
actionE e = do
  print $ e ++ " ERROR ACTION STARTED"
  threadDelay $ 3 * 10^6
  error "Ooops!"
  print $ e ++ " ERROR ACTION ENDED"
  
doStuff :: IO ()
doStuff = do
  hSetBuffering stdout LineBuffering
  q <- newEventQueue
  forkIO $ forever $ do
    let handler = \(e::SomeException) -> print "Oaoaoao, exception handled"
    catch (processEvent q) handler
  forever $ do
    x <- getLine
    atomically $ pushEvent q x
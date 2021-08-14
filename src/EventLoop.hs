module EventLoop where

import Data.Map.Strict ( (!?), delete, empty, insertWith, Map )
import Control.Monad.IO.Class
import Control.Concurrent (threadDelay)
import UnliftIO.STM
import UnliftIO.Async
import System.IO
import Control.Exception (SomeException, catch)
import Control.Monad (join)
type Handler a = a -> IO ()

type EventMap a = Map a [Handler a]

addHandler :: Ord a => a -> [Handler a] -> EventMap a -> EventMap a
addHandler = insertWith (++)

type EventQueue a = TQueue a

pushEvent :: EventQueue a -> a -> STM ()
pushEvent = writeTQueue

readEvent :: EventQueue a -> STM a 
readEvent = readTQueue

-- //TODO: Use generic m instead of IO
processEvent :: Ord a => EventQueue a -> EventMap a -> IO (EventMap a)
processEvent q m = join . atomically $ do
  e <- readEvent q
  let hs = m !? e
  case hs of
    Just hs' -> pure do
      pooledMapConcurrentlyN_ 100 (\h -> h e) hs'
      let m' = delete e m
      pure m'
    Nothing -> pure (pure m)

action :: Show a => a -> IO ()
action e = do
  print e
  threadDelay $ 3 * 10^6
  print $ show e ++ " finished"

actionE :: Show a => a -> IO ()
actionE e = do
  print $ show e ++ " ERROR ACTION STARTED"
  threadDelay $ 3 * 10^6
  error "Ooops!"
  print $ show e ++ " ERROR ACTION ENDED"
  
newEventQueue :: MonadIO m => m (EventQueue Int) 
newEventQueue = atomically $ do
  q <- newTQueue
  pushEvent q 1
  pure q

newHandlerMap :: EventMap Int
newHandlerMap = addHandler 1 acts empty
  where
    acts = [action, actionE, action, action]

doStuff :: IO ()
doStuff = do
  hSetBuffering stdout LineBuffering
  q <- newEventQueue
  let m = newHandlerMap
  let process = processEvent q m >> print "Done!"
  catch process (\(e::SomeException) -> print $ "Handled " ++ show e)
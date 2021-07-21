{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RecordWildCards #-}

module Main where
  
import Control.Monad.Trans.Maybe
import Control.Monad
import Control.Monad.IO.Class (liftIO)

import VkPure.Prelude 
import VkApi
import VkBot.Utils
import VkBot.Auth
import VkBot.LongPoll



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

  
maybe' ::  String -> IO (Maybe a)  -> IO ()  
maybe' s v = v >>= \case
  Just _ -> pure ()
  Nothing -> putStrLn s
  
main :: IO ()
main = maybe' "failed" . runMaybeT $ do
  auth <- unwrap $ runLogPassAuth user

  case auth of
    LogPassAuthPass(AuthPass{..}) -> do
      liftIO $ print auth
      let vk = api $ Token accessToken
      
      server <- longPollServer vk
      case server of
        VkSuccessResponse(VkSuccess s) -> do
          liftIO $ print s
          
          event <- longPollCall s
          case event of
            LongPollResponseSuccess(e) -> liftIO $ print e
            _ -> liftIO $ putStrLn "Do you like what you see?"
          
        _ -> liftIO $ putStrLn "Fuck you, leatherman"
    _ -> liftIO $ putStrLn "Auth error"




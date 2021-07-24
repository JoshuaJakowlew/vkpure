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
  
import Control.Monad.Trans.Except
import Control.Monad
import Control.Monad.IO.Class (liftIO)


import VkPure.Prelude 
import VkApi
import VkBot.Utils
import VkBot.Auth
import VkBot.LongPoll

user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

either' :: Show e => IO (Either e a) -> IO ()
either' v = v >>= \case
  Left e -> print e
  _ -> pure ()

main :: IO ()
main = either' . runExceptT $ do
  auth <- unwrap $ runLogPassAuth user

  case auth of
    LogPassAuthPass(AuthPass{..}) -> do
      liftIO $ print auth
      let vk = api $ Token accessToken
      
      server <- longPollServer vk
      case server of
        VkSuccessResponse(VkSuccess s) -> do
          liftIO $ print s
          
          event <- getLongPollUpdates s
          case event of
            LongPollResponseSuccess(e) -> liftIO $ print e
            _ -> throwE "Do you like what you see?"
          
        _ -> throwE "Fuck you, leatherman"
    _ -> throwE "Auth error"


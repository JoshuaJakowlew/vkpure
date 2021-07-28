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
import Servant.Client
import Servant.Client.Generic

import VkPure.Prelude 
import VkApi
import VkBot.Utils
import VkBot.Auth
import qualified VkBot.LongPoll as LP

user :: UserCredentials
user = UserCredentials "+79067440656" "SteammerHo"

either' :: Show e => IO (Either e a) -> IO ()
either' v = v >>= \case
  Left e -> print e
  _ -> pure ()

main :: IO ()
main = either' . runExceptT $ do
  auth user >>= longPollServer >>= longPollLoop print

-- // TODO: Use pts param => update types
longPollLoop :: (LongPollSuccess -> IO ()) -> GetLongPollServerResponse -> ExceptT ErrorType IO ()
longPollLoop action server = do
  lpResponse <- longPollUpdates server
  
  liftIO $ action lpResponse

  let server' = server & #ts .~ (lpResponse ^. #ts)
  longPollLoop action server'
  
longPollUpdates :: GetLongPollServerResponse -> ExceptT ErrorType IO LongPollSuccess
longPollUpdates s = (LP.getLongPollUpdates s) >>= \case
    LongPollResponseSuccess(e) -> pure e
    _ -> throwE "Can't get updates"

longPollServer :: Methods (AsClientT ClientM) -> ExceptT ErrorType IO GetLongPollServerResponse
longPollServer vk =
  (LP.longPollServer vk) >>= \case
    VkSuccessResponse(VkSuccess s) -> pure s
    _ -> throwE "Can't get long poll server"

auth :: UserCredentials -> ExceptT ErrorType IO (Methods (AsClientT ClientM))
auth user =
  (unwrap $ runLogPassAuth user) >>= \case
    LogPassAuthPass(AuthPass{..}) -> pure $ api $ Token accessToken
    _ -> throwE "Auth error"


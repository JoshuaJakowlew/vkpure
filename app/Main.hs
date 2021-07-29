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
import Data.Coerce (coerce)

import VkApi.Core qualified as Core
import VkApi.Types
import VkApi.Auth qualified
import VkApi.Messages qualified as Messages
import VkApi.LongPoll qualified 
import VkPure.Prelude
import VkBot.Utils
import VkBot.Auth qualified as Auth
import VkBot.LongPoll qualified as LongPoll

user :: Auth.UserCredentials
user = Auth.UserCredentials "+79067440656" "SteammerHo"

either' :: Show e => IO (Either e a) -> IO ()
either' v = v >>= \case
  Left e -> print e
  _ -> pure ()

main :: IO ()
main = either' . runExceptT $ do
  auth user >>= longPollServer >>= longPollLoop print

-- // TODO: Use pts param => update types
longPollLoop :: (VkApi.LongPoll.Success -> IO ()) -> Messages.LongPollServer -> ExceptT ErrorType IO ()
longPollLoop action server = do
  lpResponse <- longPollUpdates server

  liftIO $ action lpResponse

  let server' = server & #ts .~ (lpResponse ^. #ts)
  longPollLoop action server'

longPollUpdates :: Messages.LongPollServer -> ExceptT ErrorType IO VkApi.LongPoll.Success
longPollUpdates s = LongPoll.updates s >>= \case
    VkApi.LongPoll.ResponseSuccess e -> pure e
    _ -> throwE "Can't get updates"

longPollServer :: Core.Methods (AsClientT ClientM) -> ExceptT ErrorType IO Messages.LongPollServer
longPollServer vk =
  LongPoll.server vk >>= \case
    VkSuccessResponse s -> pure . coerce $ s
    _ -> throwE "Can't get long poll server"

auth :: Auth.UserCredentials -> ExceptT ErrorType IO (Core.Methods (AsClientT ClientM))
auth user =
  unwrap (Auth.run user) >>= \case
    VkApi.Auth.ResponseSuccess VkApi.Auth.Success{..} -> pure $ Core.methods $ Core.Token accessToken
    _ -> throwE "Auth error"


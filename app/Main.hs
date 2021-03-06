{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}

module Main where

import Control.Monad.Trans.Except ( runExceptT, throwE, ExceptT )
import Control.Monad.IO.Class (liftIO)
import Servant.Client ( ClientM )
import Servant.Client.Generic ( AsClientT )
import Text.Pretty.Simple (pPrint)


import VkApi          qualified 
import VkApi.Auth     qualified
import VkApi.Messages qualified as Messages
import VkApi.LongPoll qualified 
import VkApi.Types ( VkApiResponse(VkSuccessResponse), VkApiSuccess(VkSuccess) )

import VkBot.Utils 
import VkBot.Auth     qualified as Auth
import VkBot.LongPoll qualified as LongPoll

import VkPure.Prelude



user :: Auth.UserCredentials
user = Auth.UserCredentials "+79067440656" "SteammerHo"

either' :: Show e => IO (Either e a) -> IO ()
either' v = v >>= \case
  Left e -> print e
  _ -> pure ()

main :: IO ()
main = either' . runExceptT $ do
  auth user >>= longPollServer >>= longPollLoop (liftIO . pPrint)

-- // TODO: Use pts param => update types
longPollLoop :: (VkApi.LongPoll.Success -> ApiError ()) -> Messages.LongPollServer -> ApiError ()
longPollLoop action server = do
  lpResponse <- longPollUpdates server

  action lpResponse

  let server' = server & #ts .~ (lpResponse ^. #ts)
  longPollLoop action server'

longPollUpdates :: Messages.LongPollServer -> ApiError VkApi.LongPoll.Success
longPollUpdates s = LongPoll.updates s >>= \case
    VkApi.LongPoll.ResponseSuccess e -> pure e
    _ -> throwE "Can't get updates"

longPollServer :: VkApi.Methods ResponseM -> ApiError Messages.LongPollServer
longPollServer vk =
  LongPoll.server vk >>= \case
    VkSuccessResponse s -> pure . coerce $ s
    _ -> throwE "Can't get long poll server"

auth :: Auth.UserCredentials -> ApiError (VkApi.Methods ResponseM)
auth user =
  unwrap (Auth.run user) >>= \case
    VkApi.Auth.ResponseSuccess VkApi.Auth.Success{..} -> pure $ VkApi.methods $ VkApi.Token accessToken
    _ -> throwE "Auth error"


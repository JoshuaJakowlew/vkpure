{-# LANGUAGE RecordWildCards #-}

module VkBot.Auth where

import Data.Aeson
import Data.Text
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Either
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi.Methods
import VkApi.Auth
import VkApi.Messages
import VkApi.LongPoll
import VkApi.Core
import VkApi.Internal.Named
import VkBot.Utils
import VkPure.Prelude

-- Currently unused
-- Прикрутить сюда EitherT
-- Прикрутить сюда ContT
authUserLongPoll :: UserCredentials -> MaybeT IO (Either Text LongPollServer)
authUserLongPoll user = do
  auth <- unwrap $ runLogPassAuth user
  handleAuth auth
  where
    handleAuth auth = case auth of
      LogPassAuthPass(AuthPass{..}) -> do
        let vk = api $ Token accessToken
        server <- longPollServer vk
        handleLongPoll server
      _ -> pure $ Left "Wrong credentials"

    handleLongPoll server = case server of
        VkSuccessResponse(VkSuccess s) -> pure $ Right s
        _ -> pure $ Left "Cannot get long poll server"

longPollServer :: Methods (AsClientT ClientM) -> MaybeT IO (VkResponse LongPollServer Value)
longPollServer vk = unwrap . runMethod $ (vk ^.  #getLongPollServer)
                                       !  param  #lpVersion 10
                                       !  param  #needPts   0
                                       !? param  #groupId   Nothing
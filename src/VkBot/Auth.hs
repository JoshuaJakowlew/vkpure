module VkBot.Auth where

import Data.Aeson
import Control.Monad.Trans.Maybe
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi.Methods
import VkApi.Messages
import VkApi.LongPoll
import VkApi.Internal.Named
import VkBot.Utils
import VkPure.Prelude

longPollServer :: Methods (AsClientT ClientM) -> MaybeT IO (VkResponse LongPollServer Value)
longPollServer vk = unwrap . runMethod $ (vk ^.  #getLongPollServer)
                                       !  param  #lpVersion 10
                                       !  param  #needPts   0
                                       !? param  #groupId   Nothing

longPollCall :: LongPollServer -> MaybeT IO LongPollResponse
longPollCall s = unwrap . runLp s $ longPoll
                                  ! param #version 10
                                  ! param #mode    234
                                  ! param #act     "a_check"
                                  ! param #key     (s ^. #key)
                                  ! param #wait    10
                                  ! param #ts      (s ^. #ts)


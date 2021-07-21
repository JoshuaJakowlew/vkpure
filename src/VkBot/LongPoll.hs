module VkBot.LongPoll where

import Data.Aeson
import Data.Text
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Either
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi
import VkBot.Utils
import VkPure.Prelude

runLp :: LongPollServer -> ClientM a -> IO (Either ClientError a)
runLp server' = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (server server')

longPollServer :: Methods (AsClientT ClientM) -> MaybeT IO (VkResponse LongPollServer Value)
longPollServer vk = unwrap . runMethod $ (vk ^.  #getLongPollServer)
                                       !  param  #lpVersion 10
                                       !  param  #needPts   0
                                       !? param  #groupId   Nothing

longPollCall :: LongPollServer -> MaybeT IO LongPollResponse
longPollCall s = unwrap . runLp s $ longPoll
                                  ! param #version 10
                                  ! param #mode    234
                                  ! param #act     "a_check" --magic constant
                                  ! param #key     (s ^. #key)
                                  ! param #wait    10
                                  ! param #ts      (s ^. #ts)
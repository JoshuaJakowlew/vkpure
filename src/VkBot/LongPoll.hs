module VkBot.LongPoll
  ( updates
  , server
  ) where

import Data.Aeson
import Data.Text
import Control.Monad.Trans.Except
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi.LongPoll qualified as LongPoll
import VkApi.Types
import VkApi.Messages qualified as Messages
import VkApi
import VkBot.Utils
import VkPure.Prelude

server :: Methods (AsClientT ClientM) -> ExceptT ErrorType IO (VkApiResponse Messages.LongPollServer Value)
server vk = unwrap . runMethod $ (vk ^. #getLongPollServer)
                               !  param #lpVersion 10
                               !  param #needPts   0
                               !? param #groupId   Nothing

updates :: Messages.LongPollServer -> ExceptT ErrorType IO LongPoll.Response
updates s = unwrap . run s $ LongPoll.call
                           ! param #version 10
                           ! param #mode    234
                           ! param #act     "a_check" --magic constant
                           ! param #key     (s ^. #key)
                           ! param #wait    10
                           ! param #ts      (s ^. #ts)
                          
run :: Messages.LongPollServer -> ClientM a -> IO (Either ClientError a)
run lpServer = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (lpServer ^. #server)

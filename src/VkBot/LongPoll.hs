module VkBot.LongPoll
  ( getLongPollUpdates
  , longPollServer
  ) where

import Data.Aeson
import Data.Text
import Control.Monad.Trans.Except
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi
import VkBot.Utils
import VkPure.Prelude

longPollServer :: Methods (AsClientT ClientM) -> ExceptT ErrorType IO (VkApiResponse GetLongPollServerResponse Value)
longPollServer vk = unwrap . runMethod $ (vk ^. #getLongPollServer)
                                       !  param #lpVersion 10
                                       !  param #needPts   0
                                       !? param #groupId   Nothing

getLongPollUpdates :: GetLongPollServerResponse -> ExceptT ErrorType IO LongPollResponse
getLongPollUpdates s = unwrap . runLongPoll s $ longPollRequest
                                              ! param #version 10
                                              ! param #mode    234
                                              ! param #act     "a_check" --magic constant
                                              ! param #key     (s ^. #key)
                                              ! param #wait    10
                                              ! param #ts      (s ^. #ts)

runLongPoll :: GetLongPollServerResponse -> ClientM a -> IO (Either ClientError a)
runLongPoll s = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (s ^. #server)

{-
call :: Server -> Updates
process :: Updates -> ()
repeat

call :: GetLongPollServerResponse -> ExceptT ErrorType IO LongPollResponse
process :: [Event] -> ExceptT ErrorType IO
-}
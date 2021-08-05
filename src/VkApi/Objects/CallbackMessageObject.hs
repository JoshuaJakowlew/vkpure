module VkApi.Objects.CallbackMessageObject where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage
import VkApi.Objects.ClientInfoForBots

data CallbackMessageObject = CallbackMessageObject
  { callbackMessageObject_Message :: Maybe MessagesMessage
  , callbackMessageObject_ClientInfo :: Maybe ClientInfoForBots
  } deriving (Show, Generic)

instance FromJSON CallbackMessageObject where
  parseJSON = withObject "CallbackMessageObject" \o -> CallbackMessageObject
    <$> o .:? "message"
    <*> o .:? "client_info"
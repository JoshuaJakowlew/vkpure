module VkApi.Objects.CallbackMessageReply where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage

data CallbackMessageReply = CallbackMessageReply
  { callbackMessageReply_EventId :: Text
  , callbackMessageReply_GroupId :: Int
  , callbackMessageReply_Secret :: Maybe Text
  , callbackMessageReply_Type :: Text
  , callbackMessageReply_Object :: MessagesMessage
  , callbackMessageReply_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackMessageReply where
  parseJSON = withObject "CallbackMessageReply" \o -> CallbackMessageReply
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
    <*> o .: "object"
    <*> o .: "type"
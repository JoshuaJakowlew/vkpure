module VkApi.Objects.CallbackMessageEdit where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage

data CallbackMessageEdit = CallbackMessageEdit
  { callbackMessageEdit_EventId :: Text
  , callbackMessageEdit_GroupId :: Int
  , callbackMessageEdit_Secret :: Maybe Text
  , callbackMessageEdit_Type :: Text
  , callbackMessageEdit_Object :: MessagesMessage
  , callbackMessageEdit_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackMessageEdit where
  parseJSON = withObject "CallbackMessageEdit" \o -> CallbackMessageEdit
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
    <*> o .: "object"
    <*> o .: "type"
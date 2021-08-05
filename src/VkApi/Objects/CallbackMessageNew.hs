module VkApi.Objects.CallbackMessageNew where

import VkApi.Objects.Utils



data CallbackMessageNew = CallbackMessageNew
  { callbackMessageNew_EventId :: Text
  , callbackMessageNew_GroupId :: Int
  , callbackMessageNew_Secret :: Maybe Text
  , callbackMessageNew_Type :: Text
  , callbackMessageNew_Object :: Value
  , callbackMessageNew_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackMessageNew where
  parseJSON = withObject "CallbackMessageNew" \o -> CallbackMessageNew
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
    <*> o .: "object"
    <*> o .: "type"
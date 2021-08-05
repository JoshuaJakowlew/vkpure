module VkApi.Objects.CallbackMessageAllow where

import VkApi.Objects.Utils

import VkApi.Objects.CallbackMessageAllowObject

data CallbackMessageAllow = CallbackMessageAllow
  { callbackMessageAllow_EventId :: Text
  , callbackMessageAllow_GroupId :: Int
  , callbackMessageAllow_Secret :: Maybe Text
  , callbackMessageAllow_Type :: Text
  , callbackMessageAllow_Object :: CallbackMessageAllowObject
  , callbackMessageAllow_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackMessageAllow where
  parseJSON = withObject "CallbackMessageAllow" \o -> CallbackMessageAllow
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
    <*> o .: "object"
    <*> o .: "type"
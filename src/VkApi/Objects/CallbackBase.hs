module VkApi.Objects.CallbackBase where

import VkApi.Objects.Utils



data CallbackBase = CallbackBase
  { callbackBase_EventId :: Text
  , callbackBase_GroupId :: Int
  , callbackBase_Secret :: Maybe Text
  , callbackBase_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackBase where
  parseJSON = withObject "CallbackBase" \o -> CallbackBase
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
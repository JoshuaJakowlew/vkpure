module VkApi.Objects.CallbackConfirmation where

import VkApi.Objects.Utils



data CallbackConfirmation = CallbackConfirmation
  { callbackConfirmation_EventId :: Text
  , callbackConfirmation_GroupId :: Int
  , callbackConfirmation_Secret :: Maybe Text
  , callbackConfirmation_Type :: Text
  , callbackConfirmation_Type :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackConfirmation where
  parseJSON = withObject "CallbackConfirmation" \o -> CallbackConfirmation
    <$> o .: "event_id"
    <*> o .: "group_id"
    <*> o .:? "secret"
    <*> o .: "type"
    <*> o .: "type"
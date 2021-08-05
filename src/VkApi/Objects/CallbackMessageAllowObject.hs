module VkApi.Objects.CallbackMessageAllowObject where

import VkApi.Objects.Utils



data CallbackMessageAllowObject = CallbackMessageAllowObject
  { callbackMessageAllowObject_Key :: Text
  , callbackMessageAllowObject_UserId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackMessageAllowObject where
  parseJSON = withObject "CallbackMessageAllowObject" \o -> CallbackMessageAllowObject
    <$> o .: "key"
    <*> o .: "user_id"
module VkApi.Objects.CallbackGroupChangeSettings where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data CallbackGroupChangeSettings = CallbackGroupChangeSettings
  { callbackGroupChangeSettings_UserId :: Int
  , callbackGroupChangeSettings_Self :: BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON CallbackGroupChangeSettings where
  parseJSON = withObject "CallbackGroupChangeSettings" \o -> CallbackGroupChangeSettings
    <$> o .: "user_id"
    <*> o .: "self"
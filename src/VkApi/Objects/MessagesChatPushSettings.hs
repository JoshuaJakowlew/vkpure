module VkApi.Objects.MessagesChatPushSettings where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data MessagesChatPushSettings = MessagesChatPushSettings
  { messagesChatPushSettings_DisabledUntil :: Maybe Int
  , messagesChatPushSettings_Sound :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON MessagesChatPushSettings where
  parseJSON = withObject "MessagesChatPushSettings" \o -> MessagesChatPushSettings
    <$> o .:? "disabled_until"
    <*> o .:? "sound"
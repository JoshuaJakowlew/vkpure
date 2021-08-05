module VkApi.Objects.AccountPushSettings where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.AccountPushConversations
import VkApi.Objects.AccountPushParams

data AccountPushSettings = AccountPushSettings
  { accountPushSettings_Disabled :: Maybe BaseBoolInt
  , accountPushSettings_DisabledUntil :: Maybe Int
  , accountPushSettings_Conversations :: Maybe AccountPushConversations
  , accountPushSettings_Settings :: Maybe AccountPushParams
  } deriving (Show, Generic)

instance FromJSON AccountPushSettings where
  parseJSON = withObject "AccountPushSettings" \o -> AccountPushSettings
    <$> o .:? "disabled"
    <*> o .:? "disabled_until"
    <*> o .:? "conversations"
    <*> o .:? "settings"
module VkApi.Objects.AccountPushParamsSettings where

import VkApi.Objects.Utils



data AccountPushParamsSettings = AccountPushParamsSettingsOn | AccountPushParamsSettingsOff | AccountPushParamsSettingsFrOfFr
  deriving (Show, Generic)

instance FromJSON AccountPushParamsSettings where
  parseJSON = withText "AccountPushParamsSettings" \ t -> case t of 
    "on" -> pure AccountPushParamsSettingsOn
    "off" -> pure AccountPushParamsSettingsOff
    "fr_of_fr" -> pure AccountPushParamsSettingsFrOfFr
    _ -> fail "AccountPushParamsSettings: doesnt match case"

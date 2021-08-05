module VkApi.Objects.AccountUserSettingsInterest where

import VkApi.Objects.Utils



data AccountUserSettingsInterest = AccountUserSettingsInterest
  { accountUserSettingsInterest_Title :: Text
  , accountUserSettingsInterest_Value :: Text
  } deriving (Show, Generic)

instance FromJSON AccountUserSettingsInterest where
  parseJSON = withObject "AccountUserSettingsInterest" \o -> AccountUserSettingsInterest
    <$> o .: "title"
    <*> o .: "value"
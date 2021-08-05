module VkApi.Objects.AccountUserSettingsInterests where

import VkApi.Objects.Utils

import VkApi.Objects.AccountUserSettingsInterest

data AccountUserSettingsInterests = AccountUserSettingsInterests
  { accountUserSettingsInterests_Quotes :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Movies :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Activities :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Games :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Music :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_About :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Interests :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Tv :: Maybe AccountUserSettingsInterest
  , accountUserSettingsInterests_Books :: Maybe AccountUserSettingsInterest
  } deriving (Show, Generic)

instance FromJSON AccountUserSettingsInterests where
  parseJSON = withObject "AccountUserSettingsInterests" \o -> AccountUserSettingsInterests
    <$> o .:? "quotes"
    <*> o .:? "movies"
    <*> o .:? "activities"
    <*> o .:? "games"
    <*> o .:? "music"
    <*> o .:? "about"
    <*> o .:? "interests"
    <*> o .:? "tv"
    <*> o .:? "books"
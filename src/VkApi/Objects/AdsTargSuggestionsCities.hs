module VkApi.Objects.AdsTargSuggestionsCities where

import VkApi.Objects.Utils



data AdsTargSuggestionsCities = AdsTargSuggestionsCities
  { adsTargSuggestionsCities_Parent :: Maybe Text
  , adsTargSuggestionsCities_Id :: Maybe Int
  , adsTargSuggestionsCities_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsTargSuggestionsCities where
  parseJSON = withObject "AdsTargSuggestionsCities" \o -> AdsTargSuggestionsCities
    <$> o .:? "parent"
    <*> o .:? "id"
    <*> o .:? "name"
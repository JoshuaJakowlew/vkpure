module VkApi.Objects.AdsTargSuggestionsRegions where

import VkApi.Objects.Utils



data AdsTargSuggestionsRegions = AdsTargSuggestionsRegions
  { adsTargSuggestionsRegions_Id :: Maybe Int
  , adsTargSuggestionsRegions_Name :: Maybe Text
  , adsTargSuggestionsRegions_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsTargSuggestionsRegions where
  parseJSON = withObject "AdsTargSuggestionsRegions" \o -> AdsTargSuggestionsRegions
    <$> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "type"
module VkApi.Objects.AdsTargSuggestions where

import VkApi.Objects.Utils



data AdsTargSuggestions = AdsTargSuggestions
  { adsTargSuggestions_Id :: Maybe Int
  , adsTargSuggestions_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsTargSuggestions where
  parseJSON = withObject "AdsTargSuggestions" \o -> AdsTargSuggestions
    <$> o .:? "id"
    <*> o .:? "name"
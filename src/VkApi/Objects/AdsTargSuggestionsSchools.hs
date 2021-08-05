module VkApi.Objects.AdsTargSuggestionsSchools where

import VkApi.Objects.Utils

import VkApi.Objects.AdsTargSuggestionsSchoolsType

data AdsTargSuggestionsSchools = AdsTargSuggestionsSchools
  { adsTargSuggestionsSchools_Parent :: Maybe Text
  , adsTargSuggestionsSchools_Id :: Maybe Int
  , adsTargSuggestionsSchools_Name :: Maybe Text
  , adsTargSuggestionsSchools_Desc :: Maybe Text
  , adsTargSuggestionsSchools_Type :: Maybe AdsTargSuggestionsSchoolsType
  } deriving (Show, Generic)

instance FromJSON AdsTargSuggestionsSchools where
  parseJSON = withObject "AdsTargSuggestionsSchools" \o -> AdsTargSuggestionsSchools
    <$> o .:? "parent"
    <*> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "desc"
    <*> o .:? "type"
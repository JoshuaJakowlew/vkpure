module VkApi.Objects.AdsRules where

import VkApi.Objects.Utils

import VkApi.Objects.AdsParagraphs

data AdsRules = AdsRules
  { adsRules_Title :: Maybe Text
  , adsRules_Paragraphs :: Maybe [AdsParagraphs]
  } deriving (Show, Generic)

instance FromJSON AdsRules where
  parseJSON = withObject "AdsRules" \o -> AdsRules
    <$> o .:? "title"
    <*> o .:? "paragraphs"
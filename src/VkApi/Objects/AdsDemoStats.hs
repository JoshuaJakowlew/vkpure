module VkApi.Objects.AdsDemoStats where

import VkApi.Objects.Utils

import VkApi.Objects.AdsDemostatsFormat
import VkApi.Objects.AdsObjectType

data AdsDemoStats = AdsDemoStats
  { adsDemoStats_Id :: Maybe Int
  , adsDemoStats_Stats :: Maybe AdsDemostatsFormat
  , adsDemoStats_Type :: Maybe AdsObjectType
  } deriving (Show, Generic)

instance FromJSON AdsDemoStats where
  parseJSON = withObject "AdsDemoStats" \o -> AdsDemoStats
    <$> o .:? "id"
    <*> o .:? "stats"
    <*> o .:? "type"
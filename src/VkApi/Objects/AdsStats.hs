module VkApi.Objects.AdsStats where

import VkApi.Objects.Utils

import VkApi.Objects.AdsStatsViewsTimes
import VkApi.Objects.AdsStatsFormat
import VkApi.Objects.AdsObjectType

data AdsStats = AdsStats
  { adsStats_ViewsTimes :: Maybe AdsStatsViewsTimes
  , adsStats_Id :: Maybe Int
  , adsStats_Stats :: Maybe AdsStatsFormat
  , adsStats_Type :: Maybe AdsObjectType
  } deriving (Show, Generic)

instance FromJSON AdsStats where
  parseJSON = withObject "AdsStats" \o -> AdsStats
    <$> o .:? "views_times"
    <*> o .:? "id"
    <*> o .:? "stats"
    <*> o .:? "type"
module VkApi.Objects.AdsDemostatsFormat where

import VkApi.Objects.Utils

import VkApi.Objects.AdsStatsCities
import VkApi.Objects.AdsStatsSex
import VkApi.Objects.AdsStatsAge
import VkApi.Objects.AdsStatsSexAge

data AdsDemostatsFormat = AdsDemostatsFormat
  { adsDemostatsFormat_Overall :: Maybe Int
  , adsDemostatsFormat_Day :: Maybe Text
  , adsDemostatsFormat_Cities :: Maybe [AdsStatsCities]
  , adsDemostatsFormat_Month :: Maybe Text
  , adsDemostatsFormat_Sex :: Maybe [AdsStatsSex]
  , adsDemostatsFormat_Age :: Maybe [AdsStatsAge]
  , adsDemostatsFormat_SexAge :: Maybe [AdsStatsSexAge]
  } deriving (Show, Generic)

instance FromJSON AdsDemostatsFormat where
  parseJSON = withObject "AdsDemostatsFormat" \o -> AdsDemostatsFormat
    <$> o .:? "overall"
    <*> o .:? "day"
    <*> o .:? "cities"
    <*> o .:? "month"
    <*> o .:? "sex"
    <*> o .:? "age"
    <*> o .:? "sex_age"
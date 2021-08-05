module VkApi.Objects.UtilsStatsExtended where

import VkApi.Objects.Utils

import VkApi.Objects.UtilsStatsCity
import VkApi.Objects.UtilsStatsCountry
import VkApi.Objects.UtilsStatsSexAge

data UtilsStatsExtended = UtilsStatsExtended
  { utilsStatsExtended_Cities :: Maybe [UtilsStatsCity]
  , utilsStatsExtended_Countries :: Maybe [UtilsStatsCountry]
  , utilsStatsExtended_Views :: Maybe Int
  , utilsStatsExtended_Timestamp :: Maybe Int
  , utilsStatsExtended_SexAge :: Maybe [UtilsStatsSexAge]
  } deriving (Show, Generic)

instance FromJSON UtilsStatsExtended where
  parseJSON = withObject "UtilsStatsExtended" \o -> UtilsStatsExtended
    <$> o .:? "cities"
    <*> o .:? "countries"
    <*> o .:? "views"
    <*> o .:? "timestamp"
    <*> o .:? "sex_age"
module VkApi.Objects.UtilsStatsCity where

import VkApi.Objects.Utils



data UtilsStatsCity = UtilsStatsCity
  { utilsStatsCity_Views :: Maybe Int
  , utilsStatsCity_CityId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UtilsStatsCity where
  parseJSON = withObject "UtilsStatsCity" \o -> UtilsStatsCity
    <$> o .:? "views"
    <*> o .:? "city_id"
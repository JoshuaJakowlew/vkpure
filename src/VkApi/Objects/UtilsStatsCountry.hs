module VkApi.Objects.UtilsStatsCountry where

import VkApi.Objects.Utils



data UtilsStatsCountry = UtilsStatsCountry
  { utilsStatsCountry_Views :: Maybe Int
  , utilsStatsCountry_CountryId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UtilsStatsCountry where
  parseJSON = withObject "UtilsStatsCountry" \o -> UtilsStatsCountry
    <$> o .:? "views"
    <*> o .:? "country_id"
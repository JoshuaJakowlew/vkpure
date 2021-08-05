module VkApi.Objects.StatsCountry where

import VkApi.Objects.Utils



data StatsCountry = StatsCountry
  { statsCountry_Code :: Maybe Text
  , statsCountry_Name :: Maybe Text
  , statsCountry_Value :: Maybe Int
  , statsCountry_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsCountry where
  parseJSON = withObject "StatsCountry" \o -> StatsCountry
    <$> o .:? "code"
    <*> o .:? "name"
    <*> o .:? "value"
    <*> o .:? "count"
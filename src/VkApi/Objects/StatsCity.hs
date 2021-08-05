module VkApi.Objects.StatsCity where

import VkApi.Objects.Utils



data StatsCity = StatsCity
  { statsCity_Name :: Maybe Text
  , statsCity_Value :: Maybe Int
  , statsCity_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsCity where
  parseJSON = withObject "StatsCity" \o -> StatsCity
    <$> o .:? "name"
    <*> o .:? "value"
    <*> o .:? "count"
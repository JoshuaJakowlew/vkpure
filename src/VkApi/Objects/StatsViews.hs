module VkApi.Objects.StatsViews where

import VkApi.Objects.Utils

import VkApi.Objects.StatsCity
import VkApi.Objects.StatsCountry
import VkApi.Objects.StatsSexAge

data StatsViews = StatsViews
  { statsViews_Visitors :: Maybe Int
  , statsViews_MobileViews :: Maybe Int
  , statsViews_Cities :: Maybe [StatsCity]
  , statsViews_Countries :: Maybe [StatsCountry]
  , statsViews_Views :: Maybe Int
  , statsViews_Sex :: Maybe [StatsSexAge]
  , statsViews_Age :: Maybe [StatsSexAge]
  , statsViews_SexAge :: Maybe [StatsSexAge]
  } deriving (Show, Generic)

instance FromJSON StatsViews where
  parseJSON = withObject "StatsViews" \o -> StatsViews
    <$> o .:? "visitors"
    <*> o .:? "mobile_views"
    <*> o .:? "cities"
    <*> o .:? "countries"
    <*> o .:? "views"
    <*> o .:? "sex"
    <*> o .:? "age"
    <*> o .:? "sex_age"
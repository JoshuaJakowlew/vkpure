module VkApi.Objects.StatsReach where

import VkApi.Objects.Utils

import VkApi.Objects.StatsCity
import VkApi.Objects.StatsCountry
import VkApi.Objects.StatsSexAge

data StatsReach = StatsReach
  { statsReach_Cities :: Maybe [StatsCity]
  , statsReach_Countries :: Maybe [StatsCountry]
  , statsReach_ReachSubscribers :: Maybe Int
  , statsReach_Reach :: Maybe Int
  , statsReach_Sex :: Maybe [StatsSexAge]
  , statsReach_Age :: Maybe [StatsSexAge]
  , statsReach_SexAge :: Maybe [StatsSexAge]
  , statsReach_MobileReach :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsReach where
  parseJSON = withObject "StatsReach" \o -> StatsReach
    <$> o .:? "cities"
    <*> o .:? "countries"
    <*> o .:? "reach_subscribers"
    <*> o .:? "reach"
    <*> o .:? "sex"
    <*> o .:? "age"
    <*> o .:? "sex_age"
    <*> o .:? "mobile_reach"
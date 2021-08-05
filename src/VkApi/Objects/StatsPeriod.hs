module VkApi.Objects.StatsPeriod where

import VkApi.Objects.Utils

import VkApi.Objects.StatsViews
import VkApi.Objects.StatsActivity
import VkApi.Objects.StatsReach

data StatsPeriod = StatsPeriod
  { statsPeriod_Visitors :: Maybe StatsViews
  , statsPeriod_PeriodFrom :: Maybe Int
  , statsPeriod_Activity :: Maybe StatsActivity
  , statsPeriod_Reach :: Maybe StatsReach
  , statsPeriod_PeriodTo :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsPeriod where
  parseJSON = withObject "StatsPeriod" \o -> StatsPeriod
    <$> o .:? "visitors"
    <*> o .:? "period_from"
    <*> o .:? "activity"
    <*> o .:? "reach"
    <*> o .:? "period_to"
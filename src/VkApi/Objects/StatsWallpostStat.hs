module VkApi.Objects.StatsWallpostStat where

import VkApi.Objects.Utils

import VkApi.Objects.StatsSexAge

data StatsWallpostStat = StatsWallpostStat
  { statsWallpostStat_ReachSubscribersCount :: Maybe Int
  , statsWallpostStat_ReachTotalCount :: Maybe Int
  , statsWallpostStat_ToGroup :: Maybe Int
  , statsWallpostStat_Unsubscribe :: Maybe Int
  , statsWallpostStat_ReachSubscribers :: Maybe Int
  , statsWallpostStat_Links :: Maybe Int
  , statsWallpostStat_Hide :: Maybe Int
  , statsWallpostStat_ReachTotal :: Maybe Int
  , statsWallpostStat_JoinGroup :: Maybe Int
  , statsWallpostStat_ReachAds :: Maybe Int
  , statsWallpostStat_Report :: Maybe Int
  , statsWallpostStat_SexAge :: Maybe [StatsSexAge]
  , statsWallpostStat_ReachViral :: Maybe Int
  , statsWallpostStat_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsWallpostStat where
  parseJSON = withObject "StatsWallpostStat" \o -> StatsWallpostStat
    <$> o .:? "reach_subscribers_count"
    <*> o .:? "reach_total_count"
    <*> o .:? "to_group"
    <*> o .:? "unsubscribe"
    <*> o .:? "reach_subscribers"
    <*> o .:? "links"
    <*> o .:? "hide"
    <*> o .:? "reach_total"
    <*> o .:? "join_group"
    <*> o .:? "reach_ads"
    <*> o .:? "report"
    <*> o .:? "sex_age"
    <*> o .:? "reach_viral"
    <*> o .:? "post_id"
module VkApi.Objects.AdsStatsFormat where

import VkApi.Objects.Utils



data AdsStatsFormat = AdsStatsFormat
  { adsStatsFormat_Overall :: Maybe Int
  , adsStatsFormat_Day :: Maybe Text
  , adsStatsFormat_Month :: Maybe Text
  , adsStatsFormat_VideoViews :: Maybe Int
  , adsStatsFormat_Clicks :: Maybe Int
  , adsStatsFormat_Reach :: Maybe Int
  , adsStatsFormat_JoinRate :: Maybe Int
  , adsStatsFormat_VideoClicksSite :: Maybe Int
  , adsStatsFormat_VideoViewsHalf :: Maybe Int
  , adsStatsFormat_Spent :: Maybe Int
  , adsStatsFormat_VideoViewsFull :: Maybe Int
  , adsStatsFormat_Impressions :: Maybe Int
  , adsStatsFormat_LinkExternalClicks :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsStatsFormat where
  parseJSON = withObject "AdsStatsFormat" \o -> AdsStatsFormat
    <$> o .:? "overall"
    <*> o .:? "day"
    <*> o .:? "month"
    <*> o .:? "video_views"
    <*> o .:? "clicks"
    <*> o .:? "reach"
    <*> o .:? "join_rate"
    <*> o .:? "video_clicks_site"
    <*> o .:? "video_views_half"
    <*> o .:? "spent"
    <*> o .:? "video_views_full"
    <*> o .:? "impressions"
    <*> o .:? "link_external_clicks"
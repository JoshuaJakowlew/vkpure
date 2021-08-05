module VkApi.Objects.AdsStatsViewsTimes where

import VkApi.Objects.Utils



data AdsStatsViewsTimes = AdsStatsViewsTimes
  { adsStatsViewsTimes_ViewsAdsTimes6 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes7 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes1 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes4 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes11Plus :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes5 :: Maybe Text
  , adsStatsViewsTimes_ViewsAdsTimes8 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes2 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes10 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes9 :: Maybe Int
  , adsStatsViewsTimes_ViewsAdsTimes3 :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsStatsViewsTimes where
  parseJSON = withObject "AdsStatsViewsTimes" \o -> AdsStatsViewsTimes
    <$> o .:? "views_ads_times_6"
    <*> o .:? "views_ads_times_7"
    <*> o .:? "views_ads_times_1"
    <*> o .:? "views_ads_times_4"
    <*> o .:? "views_ads_times_11_plus"
    <*> o .:? "views_ads_times_5"
    <*> o .:? "views_ads_times_8"
    <*> o .:? "views_ads_times_2"
    <*> o .:? "views_ads_times_10"
    <*> o .:? "views_ads_times_9"
    <*> o .:? "views_ads_times_3"
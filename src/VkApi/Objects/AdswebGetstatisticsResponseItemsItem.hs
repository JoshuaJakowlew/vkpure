module VkApi.Objects.AdswebGetstatisticsResponseItemsItem where

import VkApi.Objects.Utils



data AdswebGetstatisticsResponseItemsItem = AdswebGetstatisticsResponseItemsItem
  { adswebGetstatisticsResponseItemsItem_DayMax :: Maybe Text
  , adswebGetstatisticsResponseItemsItem_MonthsCount :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_AdUnitId :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_DaysCount :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_OverallCount :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_MonthMax :: Maybe Text
  , adswebGetstatisticsResponseItemsItem_MonthMin :: Maybe Text
  , adswebGetstatisticsResponseItemsItem_HoursCount :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_SiteId :: Maybe Int
  , adswebGetstatisticsResponseItemsItem_DayMin :: Maybe Text
  , adswebGetstatisticsResponseItemsItem_HourMax :: Maybe Text
  , adswebGetstatisticsResponseItemsItem_HourMin :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdswebGetstatisticsResponseItemsItem where
  parseJSON = withObject "AdswebGetstatisticsResponseItemsItem" \o -> AdswebGetstatisticsResponseItemsItem
    <$> o .:? "day_max"
    <*> o .:? "months_count"
    <*> o .:? "ad_unit_id"
    <*> o .:? "days_count"
    <*> o .:? "overall_count"
    <*> o .:? "month_max"
    <*> o .:? "month_min"
    <*> o .:? "hours_count"
    <*> o .:? "site_id"
    <*> o .:? "day_min"
    <*> o .:? "hour_max"
    <*> o .:? "hour_min"
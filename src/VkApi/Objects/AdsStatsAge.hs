module VkApi.Objects.AdsStatsAge where

import VkApi.Objects.Utils



data AdsStatsAge = AdsStatsAge
  { adsStatsAge_Value :: Maybe Text
  , adsStatsAge_ClicksRate :: Maybe Double
  , adsStatsAge_ImpressionsRate :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON AdsStatsAge where
  parseJSON = withObject "AdsStatsAge" \o -> AdsStatsAge
    <$> o .:? "value"
    <*> o .:? "clicks_rate"
    <*> o .:? "impressions_rate"
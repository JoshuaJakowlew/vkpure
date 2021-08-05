module VkApi.Objects.AdsStatsSex where

import VkApi.Objects.Utils

import VkApi.Objects.AdsStatsSexValue

data AdsStatsSex = AdsStatsSex
  { adsStatsSex_Value :: Maybe AdsStatsSexValue
  , adsStatsSex_ClicksRate :: Maybe Double
  , adsStatsSex_ImpressionsRate :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON AdsStatsSex where
  parseJSON = withObject "AdsStatsSex" \o -> AdsStatsSex
    <$> o .:? "value"
    <*> o .:? "clicks_rate"
    <*> o .:? "impressions_rate"
module VkApi.Objects.AdsStatsSexAge where

import VkApi.Objects.Utils



data AdsStatsSexAge = AdsStatsSexAge
  { adsStatsSexAge_Value :: Maybe Text
  , adsStatsSexAge_ClicksRate :: Maybe Double
  , adsStatsSexAge_ImpressionsRate :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON AdsStatsSexAge where
  parseJSON = withObject "AdsStatsSexAge" \o -> AdsStatsSexAge
    <$> o .:? "value"
    <*> o .:? "clicks_rate"
    <*> o .:? "impressions_rate"
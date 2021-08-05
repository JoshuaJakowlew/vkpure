module VkApi.Objects.AdsStatsCities where

import VkApi.Objects.Utils



data AdsStatsCities = AdsStatsCities
  { adsStatsCities_Name :: Maybe Text
  , adsStatsCities_Value :: Maybe Int
  , adsStatsCities_ClicksRate :: Maybe Double
  , adsStatsCities_ImpressionsRate :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON AdsStatsCities where
  parseJSON = withObject "AdsStatsCities" \o -> AdsStatsCities
    <$> o .:? "name"
    <*> o .:? "value"
    <*> o .:? "clicks_rate"
    <*> o .:? "impressions_rate"
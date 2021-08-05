module VkApi.Objects.AdswebGetadunitsResponseAdUnitsAdUnit where

import VkApi.Objects.Utils



data AdswebGetadunitsResponseAdUnitsAdUnit = AdswebGetadunitsResponseAdUnitsAdUnit
  { adswebGetadunitsResponseAdUnitsAdUnit_Id :: Int
  , adswebGetadunitsResponseAdUnitsAdUnit_Name :: Maybe Text
  , adswebGetadunitsResponseAdUnitsAdUnit_SiteId :: Int
  } deriving (Show, Generic)

instance FromJSON AdswebGetadunitsResponseAdUnitsAdUnit where
  parseJSON = withObject "AdswebGetadunitsResponseAdUnitsAdUnit" \o -> AdswebGetadunitsResponseAdUnitsAdUnit
    <$> o .: "id"
    <*> o .:? "name"
    <*> o .: "site_id"
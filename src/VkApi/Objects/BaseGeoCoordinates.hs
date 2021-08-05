module VkApi.Objects.BaseGeoCoordinates where

import VkApi.Objects.Utils



data BaseGeoCoordinates = BaseGeoCoordinates
  { baseGeoCoordinates_Longitude :: Double
  , baseGeoCoordinates_Latitude :: Double
  } deriving (Show, Generic)

instance FromJSON BaseGeoCoordinates where
  parseJSON = withObject "BaseGeoCoordinates" \o -> BaseGeoCoordinates
    <$> o .: "longitude"
    <*> o .: "latitude"
module VkApi.Objects.BaseGeo where

import VkApi.Objects.Utils

import VkApi.Objects.BasePlace
import VkApi.Objects.BaseGeoCoordinates

data BaseGeo = BaseGeo
  { baseGeo_Showmap :: Maybe Int
  , baseGeo_Place :: Maybe BasePlace
  , baseGeo_Coordinates :: Maybe BaseGeoCoordinates
  , baseGeo_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseGeo where
  parseJSON = withObject "BaseGeo" \o -> BaseGeo
    <$> o .:? "showmap"
    <*> o .:? "place"
    <*> o .:? "coordinates"
    <*> o .:? "type"
module VkApi.Objects.WallGeo where

import VkApi.Objects.Utils

import VkApi.Objects.BasePlace

data WallGeo = WallGeo
  { wallGeo_Showmap :: Maybe Int
  , wallGeo_Place :: Maybe BasePlace
  , wallGeo_Coordinates :: Maybe Text
  , wallGeo_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON WallGeo where
  parseJSON = withObject "WallGeo" \o -> WallGeo
    <$> o .:? "showmap"
    <*> o .:? "place"
    <*> o .:? "coordinates"
    <*> o .:? "type"
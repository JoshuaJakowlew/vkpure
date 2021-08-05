module VkApi.Objects.BasePlace where

import VkApi.Objects.Utils



data BasePlace = BasePlace
  { basePlace_Address :: Maybe Text
  , basePlace_Longitude :: Maybe Double
  , basePlace_Icon :: Maybe Text
  , basePlace_Title :: Maybe Text
  , basePlace_Latitude :: Maybe Double
  , basePlace_Id :: Maybe Int
  , basePlace_Checkins :: Maybe Int
  , basePlace_City :: Maybe Text
  , basePlace_Country :: Maybe Text
  , basePlace_Created :: Maybe Int
  , basePlace_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BasePlace where
  parseJSON = withObject "BasePlace" \o -> BasePlace
    <$> o .:? "address"
    <*> o .:? "longitude"
    <*> o .:? "icon"
    <*> o .:? "title"
    <*> o .:? "latitude"
    <*> o .:? "id"
    <*> o .:? "checkins"
    <*> o .:? "city"
    <*> o .:? "country"
    <*> o .:? "created"
    <*> o .:? "type"
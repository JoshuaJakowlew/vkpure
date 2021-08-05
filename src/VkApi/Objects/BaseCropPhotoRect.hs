module VkApi.Objects.BaseCropPhotoRect where

import VkApi.Objects.Utils



data BaseCropPhotoRect = BaseCropPhotoRect
  { baseCropPhotoRect_Y :: Double
  , baseCropPhotoRect_X :: Double
  , baseCropPhotoRect_X2 :: Double
  , baseCropPhotoRect_Y2 :: Double
  } deriving (Show, Generic)

instance FromJSON BaseCropPhotoRect where
  parseJSON = withObject "BaseCropPhotoRect" \o -> BaseCropPhotoRect
    <$> o .: "y"
    <*> o .: "x"
    <*> o .: "x2"
    <*> o .: "y2"
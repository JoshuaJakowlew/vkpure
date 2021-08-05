module VkApi.Objects.BaseCropPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhoto
import VkApi.Objects.BaseCropPhotoCrop
import VkApi.Objects.BaseCropPhotoRect

data BaseCropPhoto = BaseCropPhoto
  { baseCropPhoto_Photo :: PhotosPhoto
  , baseCropPhoto_Crop :: BaseCropPhotoCrop
  , baseCropPhoto_Rect :: BaseCropPhotoRect
  } deriving (Show, Generic)

instance FromJSON BaseCropPhoto where
  parseJSON = withObject "BaseCropPhoto" \o -> BaseCropPhoto
    <$> o .: "photo"
    <*> o .: "crop"
    <*> o .: "rect"
module VkApi.Objects.PhotosImage where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosImageType

data PhotosImage = PhotosImage
  { photosImage_Height :: Maybe Int
  , photosImage_Width :: Maybe Int
  , photosImage_Url :: Maybe Text
  , photosImage_Type :: Maybe PhotosImageType
  } deriving (Show, Generic)

instance FromJSON PhotosImage where
  parseJSON = withObject "PhotosImage" \o -> PhotosImage
    <$> o .:? "height"
    <*> o .:? "width"
    <*> o .:? "url"
    <*> o .:? "type"
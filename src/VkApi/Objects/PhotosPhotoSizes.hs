module VkApi.Objects.PhotosPhotoSizes where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoSizesType

data PhotosPhotoSizes = PhotosPhotoSizes
  { photosPhotoSizes_Height :: Int
  , photosPhotoSizes_Width :: Int
  , photosPhotoSizes_Src :: Maybe Text
  , photosPhotoSizes_Url :: Text
  , photosPhotoSizes_Type :: PhotosPhotoSizesType
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoSizes where
  parseJSON = withObject "PhotosPhotoSizes" \o -> PhotosPhotoSizes
    <$> o .: "height"
    <*> o .: "width"
    <*> o .:? "src"
    <*> o .: "url"
    <*> o .: "type"
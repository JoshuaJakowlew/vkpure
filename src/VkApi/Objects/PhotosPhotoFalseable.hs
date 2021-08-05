module VkApi.Objects.PhotosPhotoFalseable where

import VkApi.Objects.Utils



data PhotosPhotoFalseable = PhotosPhotoFalseable1 Bool | PhotosPhotoFalseable2 Text
  deriving (Show, Generic)

instance FromJSON PhotosPhotoFalseable where
  parseJSON = genericParseJSON defaultOptions { sumEncoding  = UntaggedValue }
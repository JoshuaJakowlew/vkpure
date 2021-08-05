module VkApi.Objects.PhotosPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosImage
import VkApi.Objects.PhotosPhotoSizes
import VkApi.Objects.BaseBoolInt

data PhotosPhoto = PhotosPhoto
  { photosPhoto_Height :: Maybe Int
  , photosPhoto_Images :: Maybe [PhotosImage]
  , photosPhoto_Width :: Maybe Int
  , photosPhoto_Place :: Maybe Text
  , photosPhoto_UserId :: Maybe Int
  , photosPhoto_Id :: Int
  , photosPhoto_Photo256 :: Maybe Text
  , photosPhoto_Long :: Maybe Double
  , photosPhoto_AccessKey :: Maybe Text
  , photosPhoto_Date :: Int
  , photosPhoto_HasTags :: Bool
  , photosPhoto_Lat :: Maybe Double
  , photosPhoto_Sizes :: Maybe [PhotosPhotoSizes]
  , photosPhoto_OwnerId :: Int
  , photosPhoto_CanComment :: Maybe BaseBoolInt
  , photosPhoto_AlbumId :: Int
  , photosPhoto_Text :: Maybe Text
  , photosPhoto_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhoto where
  parseJSON = withObject "PhotosPhoto" \o -> PhotosPhoto
    <$> o .:? "height"
    <*> o .:? "images"
    <*> o .:? "width"
    <*> o .:? "place"
    <*> o .:? "user_id"
    <*> o .: "id"
    <*> o .:? "photo_256"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .: "has_tags"
    <*> o .:? "lat"
    <*> o .:? "sizes"
    <*> o .: "owner_id"
    <*> o .:? "can_comment"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "post_id"
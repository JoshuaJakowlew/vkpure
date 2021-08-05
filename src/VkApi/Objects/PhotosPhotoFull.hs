module VkApi.Objects.PhotosPhotoFull where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosImage
import VkApi.Objects.BaseLikes
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.BaseObjectCount
import VkApi.Objects.BaseBoolInt

data PhotosPhotoFull = PhotosPhotoFull
  { photosPhotoFull_Height :: Maybe Int
  , photosPhotoFull_Images :: Maybe [PhotosImage]
  , photosPhotoFull_Width :: Maybe Int
  , photosPhotoFull_UserId :: Maybe Int
  , photosPhotoFull_Likes :: Maybe BaseLikes
  , photosPhotoFull_Id :: Int
  , photosPhotoFull_Long :: Maybe Double
  , photosPhotoFull_AccessKey :: Maybe Text
  , photosPhotoFull_Date :: Int
  , photosPhotoFull_Reposts :: Maybe BaseRepostsInfo
  , photosPhotoFull_Lat :: Maybe Double
  , photosPhotoFull_Tags :: Maybe BaseObjectCount
  , photosPhotoFull_OwnerId :: Int
  , photosPhotoFull_Comments :: Maybe BaseObjectCount
  , photosPhotoFull_CanComment :: Maybe BaseBoolInt
  , photosPhotoFull_AlbumId :: Int
  , photosPhotoFull_Text :: Maybe Text
  , photosPhotoFull_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoFull where
  parseJSON = withObject "PhotosPhotoFull" \o -> PhotosPhotoFull
    <$> o .:? "height"
    <*> o .:? "images"
    <*> o .:? "width"
    <*> o .:? "user_id"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "reposts"
    <*> o .:? "lat"
    <*> o .:? "tags"
    <*> o .: "owner_id"
    <*> o .:? "comments"
    <*> o .:? "can_comment"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "post_id"
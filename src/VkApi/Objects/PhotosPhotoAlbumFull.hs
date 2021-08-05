module VkApi.Objects.PhotosPhotoAlbumFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.PhotosPhotoSizes

data PhotosPhotoAlbumFull = PhotosPhotoAlbumFull
  { photosPhotoAlbumFull_Title :: Text
  , photosPhotoAlbumFull_Id :: Int
  , photosPhotoAlbumFull_CommentsDisabled :: Maybe BaseBoolInt
  , photosPhotoAlbumFull_UploadByAdminsOnly :: Maybe BaseBoolInt
  , photosPhotoAlbumFull_ThumbId :: Maybe Int
  , photosPhotoAlbumFull_Description :: Maybe Text
  , photosPhotoAlbumFull_Sizes :: Maybe [PhotosPhotoSizes]
  , photosPhotoAlbumFull_ThumbIsLast :: Maybe BaseBoolInt
  , photosPhotoAlbumFull_ThumbSrc :: Maybe Text
  , photosPhotoAlbumFull_OwnerId :: Int
  , photosPhotoAlbumFull_Created :: Int
  , photosPhotoAlbumFull_CanUpload :: Maybe BaseBoolInt
  , photosPhotoAlbumFull_Size :: Int
  , photosPhotoAlbumFull_Updated :: Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoAlbumFull where
  parseJSON = withObject "PhotosPhotoAlbumFull" \o -> PhotosPhotoAlbumFull
    <$> o .: "title"
    <*> o .: "id"
    <*> o .:? "comments_disabled"
    <*> o .:? "upload_by_admins_only"
    <*> o .:? "thumb_id"
    <*> o .:? "description"
    <*> o .:? "sizes"
    <*> o .:? "thumb_is_last"
    <*> o .:? "thumb_src"
    <*> o .: "owner_id"
    <*> o .: "created"
    <*> o .:? "can_upload"
    <*> o .: "size"
    <*> o .: "updated"
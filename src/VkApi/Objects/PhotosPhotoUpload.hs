module VkApi.Objects.PhotosPhotoUpload where

import VkApi.Objects.Utils



data PhotosPhotoUpload = PhotosPhotoUpload
  { photosPhotoUpload_FallbackUploadUrl :: Maybe Text
  , photosPhotoUpload_UserId :: Int
  , photosPhotoUpload_GroupId :: Maybe Int
  , photosPhotoUpload_UploadUrl :: Text
  , photosPhotoUpload_AlbumId :: Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoUpload where
  parseJSON = withObject "PhotosPhotoUpload" \o -> PhotosPhotoUpload
    <$> o .:? "fallback_upload_url"
    <*> o .: "user_id"
    <*> o .:? "group_id"
    <*> o .: "upload_url"
    <*> o .: "album_id"
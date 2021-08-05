module VkApi.Objects.PhotosPhotoAlbum where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhoto

data PhotosPhotoAlbum = PhotosPhotoAlbum
  { photosPhotoAlbum_Thumb :: Maybe PhotosPhoto
  , photosPhotoAlbum_Title :: Text
  , photosPhotoAlbum_Id :: Int
  , photosPhotoAlbum_Description :: Maybe Text
  , photosPhotoAlbum_OwnerId :: Int
  , photosPhotoAlbum_Created :: Int
  , photosPhotoAlbum_Size :: Int
  , photosPhotoAlbum_Updated :: Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoAlbum where
  parseJSON = withObject "PhotosPhotoAlbum" \o -> PhotosPhotoAlbum
    <$> o .:? "thumb"
    <*> o .: "title"
    <*> o .: "id"
    <*> o .:? "description"
    <*> o .: "owner_id"
    <*> o .: "created"
    <*> o .: "size"
    <*> o .: "updated"
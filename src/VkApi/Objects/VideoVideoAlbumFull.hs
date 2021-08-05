module VkApi.Objects.VideoVideoAlbumFull where

import VkApi.Objects.Utils

import VkApi.Objects.BasePropertyExists
import VkApi.Objects.VideoVideoImage

data VideoVideoAlbumFull = VideoVideoAlbumFull
  { videoVideoAlbumFull_ImageBlur :: Maybe BasePropertyExists
  , videoVideoAlbumFull_Title :: Text
  , videoVideoAlbumFull_Id :: Maybe Int
  , videoVideoAlbumFull_UpdatedTime :: Int
  , videoVideoAlbumFull_Image :: Maybe [VideoVideoImage]
  , videoVideoAlbumFull_OwnerId :: Int
  , videoVideoAlbumFull_Count :: Int
  , videoVideoAlbumFull_IsSystem :: Maybe BasePropertyExists
  } deriving (Show, Generic)

instance FromJSON VideoVideoAlbumFull where
  parseJSON = withObject "VideoVideoAlbumFull" \o -> VideoVideoAlbumFull
    <$> o .:? "image_blur"
    <*> o .: "title"
    <*> o .:? "id"
    <*> o .: "updated_time"
    <*> o .:? "image"
    <*> o .: "owner_id"
    <*> o .: "count"
    <*> o .:? "is_system"
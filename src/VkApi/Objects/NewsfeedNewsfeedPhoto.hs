module VkApi.Objects.NewsfeedNewsfeedPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosImage
import VkApi.Objects.PhotosPhotoSizes
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseLikes
import VkApi.Objects.BaseObjectCount

data NewsfeedNewsfeedPhoto = NewsfeedNewsfeedPhoto
  { newsfeedNewsfeedPhoto_Height :: Maybe Int
  , newsfeedNewsfeedPhoto_Images :: Maybe [PhotosImage]
  , newsfeedNewsfeedPhoto_Width :: Maybe Int
  , newsfeedNewsfeedPhoto_Place :: Maybe Text
  , newsfeedNewsfeedPhoto_UserId :: Maybe Int
  , newsfeedNewsfeedPhoto_Id :: Int
  , newsfeedNewsfeedPhoto_Photo256 :: Maybe Text
  , newsfeedNewsfeedPhoto_Long :: Maybe Double
  , newsfeedNewsfeedPhoto_AccessKey :: Maybe Text
  , newsfeedNewsfeedPhoto_Date :: Int
  , newsfeedNewsfeedPhoto_HasTags :: Bool
  , newsfeedNewsfeedPhoto_Lat :: Maybe Double
  , newsfeedNewsfeedPhoto_Sizes :: Maybe [PhotosPhotoSizes]
  , newsfeedNewsfeedPhoto_OwnerId :: Int
  , newsfeedNewsfeedPhoto_CanComment :: Maybe BaseBoolInt
  , newsfeedNewsfeedPhoto_AlbumId :: Int
  , newsfeedNewsfeedPhoto_Text :: Maybe Text
  , newsfeedNewsfeedPhoto_PostId :: Maybe Int
  , newsfeedNewsfeedPhoto_CanRepost :: Maybe BaseBoolInt
  , newsfeedNewsfeedPhoto_Likes :: Maybe BaseLikes
  , newsfeedNewsfeedPhoto_Comments :: Maybe BaseObjectCount
  } deriving (Show, Generic)

instance FromJSON NewsfeedNewsfeedPhoto where
  parseJSON = withObject "NewsfeedNewsfeedPhoto" \o -> NewsfeedNewsfeedPhoto
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
    <*> o .:? "can_repost"
    <*> o .:? "likes"
    <*> o .:? "comments"
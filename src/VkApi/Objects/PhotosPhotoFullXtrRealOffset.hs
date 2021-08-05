module VkApi.Objects.PhotosPhotoFullXtrRealOffset where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLikes
import VkApi.Objects.BaseObjectCount
import VkApi.Objects.PhotosPhotoSizes
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists

data PhotosPhotoFullXtrRealOffset = PhotosPhotoFullXtrRealOffset
  { photosPhotoFullXtrRealOffset_Height :: Maybe Int
  , photosPhotoFullXtrRealOffset_Photo807 :: Maybe Text
  , photosPhotoFullXtrRealOffset_Photo604 :: Maybe Text
  , photosPhotoFullXtrRealOffset_Width :: Maybe Int
  , photosPhotoFullXtrRealOffset_UserId :: Maybe Int
  , photosPhotoFullXtrRealOffset_Likes :: Maybe BaseLikes
  , photosPhotoFullXtrRealOffset_Photo1280 :: Maybe Text
  , photosPhotoFullXtrRealOffset_Id :: Int
  , photosPhotoFullXtrRealOffset_Long :: Maybe Double
  , photosPhotoFullXtrRealOffset_AccessKey :: Maybe Text
  , photosPhotoFullXtrRealOffset_Date :: Int
  , photosPhotoFullXtrRealOffset_Reposts :: Maybe BaseObjectCount
  , photosPhotoFullXtrRealOffset_Lat :: Maybe Double
  , photosPhotoFullXtrRealOffset_Photo75 :: Maybe Text
  , photosPhotoFullXtrRealOffset_Photo130 :: Maybe Text
  , photosPhotoFullXtrRealOffset_Tags :: Maybe BaseObjectCount
  , photosPhotoFullXtrRealOffset_Sizes :: Maybe [PhotosPhotoSizes]
  , photosPhotoFullXtrRealOffset_OwnerId :: Int
  , photosPhotoFullXtrRealOffset_RealOffset :: Maybe Int
  , photosPhotoFullXtrRealOffset_Comments :: Maybe BaseObjectCount
  , photosPhotoFullXtrRealOffset_CanComment :: Maybe BaseBoolInt
  , photosPhotoFullXtrRealOffset_AlbumId :: Int
  , photosPhotoFullXtrRealOffset_Text :: Maybe Text
  , photosPhotoFullXtrRealOffset_Photo2560 :: Maybe Text
  , photosPhotoFullXtrRealOffset_PostId :: Maybe Int
  , photosPhotoFullXtrRealOffset_Hidden :: Maybe BasePropertyExists
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoFullXtrRealOffset where
  parseJSON = withObject "PhotosPhotoFullXtrRealOffset" \o -> PhotosPhotoFullXtrRealOffset
    <$> o .:? "height"
    <*> o .:? "photo_807"
    <*> o .:? "photo_604"
    <*> o .:? "width"
    <*> o .:? "user_id"
    <*> o .:? "likes"
    <*> o .:? "photo_1280"
    <*> o .: "id"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "reposts"
    <*> o .:? "lat"
    <*> o .:? "photo_75"
    <*> o .:? "photo_130"
    <*> o .:? "tags"
    <*> o .:? "sizes"
    <*> o .: "owner_id"
    <*> o .:? "real_offset"
    <*> o .:? "comments"
    <*> o .:? "can_comment"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "photo_2560"
    <*> o .:? "post_id"
    <*> o .:? "hidden"
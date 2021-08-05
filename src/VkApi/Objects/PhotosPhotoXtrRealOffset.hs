module VkApi.Objects.PhotosPhotoXtrRealOffset where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoSizes
import VkApi.Objects.BasePropertyExists

data PhotosPhotoXtrRealOffset = PhotosPhotoXtrRealOffset
  { photosPhotoXtrRealOffset_Height :: Maybe Int
  , photosPhotoXtrRealOffset_Photo807 :: Maybe Text
  , photosPhotoXtrRealOffset_Photo604 :: Maybe Text
  , photosPhotoXtrRealOffset_Width :: Maybe Int
  , photosPhotoXtrRealOffset_UserId :: Maybe Int
  , photosPhotoXtrRealOffset_Photo1280 :: Maybe Text
  , photosPhotoXtrRealOffset_Id :: Int
  , photosPhotoXtrRealOffset_Long :: Maybe Double
  , photosPhotoXtrRealOffset_AccessKey :: Maybe Text
  , photosPhotoXtrRealOffset_Date :: Int
  , photosPhotoXtrRealOffset_Lat :: Maybe Double
  , photosPhotoXtrRealOffset_Photo75 :: Maybe Text
  , photosPhotoXtrRealOffset_Photo130 :: Maybe Text
  , photosPhotoXtrRealOffset_Sizes :: Maybe [PhotosPhotoSizes]
  , photosPhotoXtrRealOffset_OwnerId :: Int
  , photosPhotoXtrRealOffset_RealOffset :: Maybe Int
  , photosPhotoXtrRealOffset_AlbumId :: Int
  , photosPhotoXtrRealOffset_Text :: Maybe Text
  , photosPhotoXtrRealOffset_Photo2560 :: Maybe Text
  , photosPhotoXtrRealOffset_PostId :: Maybe Int
  , photosPhotoXtrRealOffset_Hidden :: Maybe BasePropertyExists
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoXtrRealOffset where
  parseJSON = withObject "PhotosPhotoXtrRealOffset" \o -> PhotosPhotoXtrRealOffset
    <$> o .:? "height"
    <*> o .:? "photo_807"
    <*> o .:? "photo_604"
    <*> o .:? "width"
    <*> o .:? "user_id"
    <*> o .:? "photo_1280"
    <*> o .: "id"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "lat"
    <*> o .:? "photo_75"
    <*> o .:? "photo_130"
    <*> o .:? "sizes"
    <*> o .: "owner_id"
    <*> o .:? "real_offset"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "photo_2560"
    <*> o .:? "post_id"
    <*> o .:? "hidden"
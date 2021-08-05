module VkApi.Objects.PhotosPhotoXtrTagInfo where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoSizes

data PhotosPhotoXtrTagInfo = PhotosPhotoXtrTagInfo
  { photosPhotoXtrTagInfo_Height :: Maybe Int
  , photosPhotoXtrTagInfo_Photo807 :: Maybe Text
  , photosPhotoXtrTagInfo_Photo604 :: Maybe Text
  , photosPhotoXtrTagInfo_Width :: Maybe Int
  , photosPhotoXtrTagInfo_UserId :: Maybe Int
  , photosPhotoXtrTagInfo_TagId :: Maybe Int
  , photosPhotoXtrTagInfo_Photo1280 :: Maybe Text
  , photosPhotoXtrTagInfo_Id :: Int
  , photosPhotoXtrTagInfo_TagCreated :: Maybe Int
  , photosPhotoXtrTagInfo_Long :: Maybe Double
  , photosPhotoXtrTagInfo_AccessKey :: Maybe Text
  , photosPhotoXtrTagInfo_Date :: Int
  , photosPhotoXtrTagInfo_Lat :: Maybe Double
  , photosPhotoXtrTagInfo_Photo75 :: Maybe Text
  , photosPhotoXtrTagInfo_Photo130 :: Maybe Text
  , photosPhotoXtrTagInfo_Sizes :: Maybe [PhotosPhotoSizes]
  , photosPhotoXtrTagInfo_PlacerId :: Maybe Int
  , photosPhotoXtrTagInfo_OwnerId :: Int
  , photosPhotoXtrTagInfo_AlbumId :: Int
  , photosPhotoXtrTagInfo_Text :: Maybe Text
  , photosPhotoXtrTagInfo_Photo2560 :: Maybe Text
  , photosPhotoXtrTagInfo_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoXtrTagInfo where
  parseJSON = withObject "PhotosPhotoXtrTagInfo" \o -> PhotosPhotoXtrTagInfo
    <$> o .:? "height"
    <*> o .:? "photo_807"
    <*> o .:? "photo_604"
    <*> o .:? "width"
    <*> o .:? "user_id"
    <*> o .:? "tag_id"
    <*> o .:? "photo_1280"
    <*> o .: "id"
    <*> o .:? "tag_created"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "lat"
    <*> o .:? "photo_75"
    <*> o .:? "photo_130"
    <*> o .:? "sizes"
    <*> o .:? "placer_id"
    <*> o .: "owner_id"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "photo_2560"
    <*> o .:? "post_id"
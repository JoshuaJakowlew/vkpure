module VkApi.Objects.PhotosPhotoTag where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data PhotosPhotoTag = PhotosPhotoTag
  { photosPhotoTag_Viewed :: BaseBoolInt
  , photosPhotoTag_TaggedName :: Text
  , photosPhotoTag_Y :: Double
  , photosPhotoTag_UserId :: Int
  , photosPhotoTag_X :: Double
  , photosPhotoTag_Id :: Int
  , photosPhotoTag_X2 :: Double
  , photosPhotoTag_Date :: Int
  , photosPhotoTag_Description :: Maybe Text
  , photosPhotoTag_PlacerId :: Int
  , photosPhotoTag_Y2 :: Double
  } deriving (Show, Generic)

instance FromJSON PhotosPhotoTag where
  parseJSON = withObject "PhotosPhotoTag" \o -> PhotosPhotoTag
    <$> o .: "viewed"
    <*> o .: "tagged_name"
    <*> o .: "y"
    <*> o .: "user_id"
    <*> o .: "x"
    <*> o .: "id"
    <*> o .: "x2"
    <*> o .: "date"
    <*> o .:? "description"
    <*> o .: "placer_id"
    <*> o .: "y2"
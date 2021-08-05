module VkApi.Objects.NewsfeedItemPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemPhotoPhotos

data NewsfeedItemPhoto = NewsfeedItemPhoto
  { newsfeedItemPhoto_CarouselOffset :: Maybe Int
  , newsfeedItemPhoto_SourceId :: Int
  , newsfeedItemPhoto_Date :: Int
  , newsfeedItemPhoto_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemPhoto_Photos :: Maybe NewsfeedItemPhotoPhotos
  , newsfeedItemPhoto_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPhoto where
  parseJSON = withObject "NewsfeedItemPhoto" \o -> NewsfeedItemPhoto
    <$> o .:? "carousel_offset"
    <*> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "photos"
    <*> o .:? "post_id"
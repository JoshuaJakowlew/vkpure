module VkApi.Objects.NewsfeedItemPhotoTag where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemPhotoTagPhotoTags

data NewsfeedItemPhotoTag = NewsfeedItemPhotoTag
  { newsfeedItemPhotoTag_CarouselOffset :: Maybe Int
  , newsfeedItemPhotoTag_SourceId :: Int
  , newsfeedItemPhotoTag_Date :: Int
  , newsfeedItemPhotoTag_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemPhotoTag_PhotoTags :: Maybe NewsfeedItemPhotoTagPhotoTags
  , newsfeedItemPhotoTag_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPhotoTag where
  parseJSON = withObject "NewsfeedItemPhotoTag" \o -> NewsfeedItemPhotoTag
    <$> o .:? "carousel_offset"
    <*> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "photo_tags"
    <*> o .:? "post_id"
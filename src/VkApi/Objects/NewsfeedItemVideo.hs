module VkApi.Objects.NewsfeedItemVideo where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemVideoVideo

data NewsfeedItemVideo = NewsfeedItemVideo
  { newsfeedItemVideo_CarouselOffset :: Maybe Int
  , newsfeedItemVideo_SourceId :: Int
  , newsfeedItemVideo_Date :: Int
  , newsfeedItemVideo_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemVideo_Video :: Maybe NewsfeedItemVideoVideo
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemVideo where
  parseJSON = withObject "NewsfeedItemVideo" \o -> NewsfeedItemVideo
    <$> o .:? "carousel_offset"
    <*> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "video"
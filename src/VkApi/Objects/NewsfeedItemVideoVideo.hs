module VkApi.Objects.NewsfeedItemVideoVideo where

import VkApi.Objects.Utils

import VkApi.Objects.VideoVideo

data NewsfeedItemVideoVideo = NewsfeedItemVideoVideo
  { newsfeedItemVideoVideo_Items :: Maybe [VideoVideo]
  , newsfeedItemVideoVideo_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemVideoVideo where
  parseJSON = withObject "NewsfeedItemVideoVideo" \o -> NewsfeedItemVideoVideo
    <$> o .:? "items"
    <*> o .:? "count"
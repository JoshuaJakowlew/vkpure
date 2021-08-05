module VkApi.Objects.NewsfeedItemTopic where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.BaseCommentsInfo

data NewsfeedItemTopic = NewsfeedItemTopic
  { newsfeedItemTopic_SourceId :: Int
  , newsfeedItemTopic_Date :: Int
  , newsfeedItemTopic_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemTopic_Likes :: Maybe BaseLikesInfo
  , newsfeedItemTopic_Comments :: Maybe BaseCommentsInfo
  , newsfeedItemTopic_Text :: Text
  , newsfeedItemTopic_PostId :: Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemTopic where
  parseJSON = withObject "NewsfeedItemTopic" \o -> NewsfeedItemTopic
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "likes"
    <*> o .:? "comments"
    <*> o .: "text"
    <*> o .: "post_id"
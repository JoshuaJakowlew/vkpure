module VkApi.Objects.StoriesStoryStats where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesStoryStatsStat

data StoriesStoryStats = StoriesStoryStats
  { storiesStoryStats_Replies :: StoriesStoryStatsStat
  , storiesStoryStats_Subscribers :: StoriesStoryStatsStat
  , storiesStoryStats_Shares :: StoriesStoryStatsStat
  , storiesStoryStats_Views :: StoriesStoryStatsStat
  , storiesStoryStats_Likes :: StoriesStoryStatsStat
  , storiesStoryStats_Answer :: StoriesStoryStatsStat
  , storiesStoryStats_Bans :: StoriesStoryStatsStat
  , storiesStoryStats_OpenLink :: StoriesStoryStatsStat
  } deriving (Show, Generic)

instance FromJSON StoriesStoryStats where
  parseJSON = withObject "StoriesStoryStats" \o -> StoriesStoryStats
    <$> o .: "replies"
    <*> o .: "subscribers"
    <*> o .: "shares"
    <*> o .: "views"
    <*> o .: "likes"
    <*> o .: "answer"
    <*> o .: "bans"
    <*> o .: "open_link"
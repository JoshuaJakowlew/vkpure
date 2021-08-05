module VkApi.Objects.StoriesStoryStatsStat where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesStoryStatsState

data StoriesStoryStatsStat = StoriesStoryStatsStat
  { storiesStoryStatsStat_State :: StoriesStoryStatsState
  , storiesStoryStatsStat_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StoriesStoryStatsStat where
  parseJSON = withObject "StoriesStoryStatsStat" \o -> StoriesStoryStatsStat
    <$> o .: "state"
    <*> o .:? "count"
module VkApi.Objects.StoriesReplies where

import VkApi.Objects.Utils



data StoriesReplies = StoriesReplies
  { storiesReplies_New :: Maybe Int
  , storiesReplies_Count :: Int
  } deriving (Show, Generic)

instance FromJSON StoriesReplies where
  parseJSON = withObject "StoriesReplies" \o -> StoriesReplies
    <$> o .:? "new"
    <*> o .: "count"
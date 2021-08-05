module VkApi.Objects.StoriesStoryLink where

import VkApi.Objects.Utils



data StoriesStoryLink = StoriesStoryLink
  { storiesStoryLink_Url :: Text
  , storiesStoryLink_Text :: Text
  } deriving (Show, Generic)

instance FromJSON StoriesStoryLink where
  parseJSON = withObject "StoriesStoryLink" \o -> StoriesStoryLink
    <$> o .: "url"
    <*> o .: "text"
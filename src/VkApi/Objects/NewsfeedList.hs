module VkApi.Objects.NewsfeedList where

import VkApi.Objects.Utils



data NewsfeedList = NewsfeedList
  { newsfeedList_Title :: Text
  , newsfeedList_Id :: Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedList where
  parseJSON = withObject "NewsfeedList" \o -> NewsfeedList
    <$> o .: "title"
    <*> o .: "id"
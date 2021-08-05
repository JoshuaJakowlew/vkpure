module VkApi.Objects.NewsfeedListFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data NewsfeedListFull = NewsfeedListFull
  { newsfeedListFull_Title :: Text
  , newsfeedListFull_Id :: Int
  , newsfeedListFull_SourceIds :: Maybe [Int]
  , newsfeedListFull_NoReposts :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON NewsfeedListFull where
  parseJSON = withObject "NewsfeedListFull" \o -> NewsfeedListFull
    <$> o .: "title"
    <*> o .: "id"
    <*> o .:? "source_ids"
    <*> o .:? "no_reposts"
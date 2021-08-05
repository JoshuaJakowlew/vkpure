module VkApi.Objects.NewsfeedItemBase where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType

data NewsfeedItemBase = NewsfeedItemBase
  { newsfeedItemBase_SourceId :: Int
  , newsfeedItemBase_Date :: Int
  , newsfeedItemBase_Type :: NewsfeedNewsfeedItemType
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemBase where
  parseJSON = withObject "NewsfeedItemBase" \o -> NewsfeedItemBase
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
module VkApi.Objects.NewsfeedItemFriend where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemFriendFriends

data NewsfeedItemFriend = NewsfeedItemFriend
  { newsfeedItemFriend_SourceId :: Int
  , newsfeedItemFriend_Date :: Int
  , newsfeedItemFriend_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemFriend_Friends :: Maybe NewsfeedItemFriendFriends
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemFriend where
  parseJSON = withObject "NewsfeedItemFriend" \o -> NewsfeedItemFriend
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "friends"
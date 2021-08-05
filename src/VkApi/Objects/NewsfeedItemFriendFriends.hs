module VkApi.Objects.NewsfeedItemFriendFriends where

import VkApi.Objects.Utils

import VkApi.Objects.BaseUserId

data NewsfeedItemFriendFriends = NewsfeedItemFriendFriends
  { newsfeedItemFriendFriends_Items :: Maybe [BaseUserId]
  , newsfeedItemFriendFriends_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemFriendFriends where
  parseJSON = withObject "NewsfeedItemFriendFriends" \o -> NewsfeedItemFriendFriends
    <$> o .:? "items"
    <*> o .:? "count"
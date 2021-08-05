module VkApi.Objects.FriendsMutualFriend where

import VkApi.Objects.Utils



data FriendsMutualFriend = FriendsMutualFriend
  { friendsMutualFriend_CommonFriends :: Maybe [Int]
  , friendsMutualFriend_Id :: Maybe Int
  , friendsMutualFriend_CommonCount :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON FriendsMutualFriend where
  parseJSON = withObject "FriendsMutualFriend" \o -> FriendsMutualFriend
    <$> o .:? "common_friends"
    <*> o .:? "id"
    <*> o .:? "common_count"
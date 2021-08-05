module VkApi.Objects.FriendsRequests where

import VkApi.Objects.Utils

import VkApi.Objects.FriendsRequestsMutual

data FriendsRequests = FriendsRequests
  { friendsRequests_UserId :: Maybe Int
  , friendsRequests_Mutual :: Maybe FriendsRequestsMutual
  , friendsRequests_From :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON FriendsRequests where
  parseJSON = withObject "FriendsRequests" \o -> FriendsRequests
    <$> o .:? "user_id"
    <*> o .:? "mutual"
    <*> o .:? "from"
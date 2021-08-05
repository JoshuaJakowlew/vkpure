module VkApi.Objects.FriendsFriendStatus where

import VkApi.Objects.Utils

import VkApi.Objects.FriendsFriendStatusStatus

data FriendsFriendStatus = FriendsFriendStatus
  { friendsFriendStatus_FriendStatus :: FriendsFriendStatusStatus
  , friendsFriendStatus_UserId :: Int
  , friendsFriendStatus_Sign :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON FriendsFriendStatus where
  parseJSON = withObject "FriendsFriendStatus" \o -> FriendsFriendStatus
    <$> o .: "friend_status"
    <*> o .: "user_id"
    <*> o .:? "sign"
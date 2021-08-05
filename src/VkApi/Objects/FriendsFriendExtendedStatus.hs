module VkApi.Objects.FriendsFriendExtendedStatus where

import VkApi.Objects.Utils

import VkApi.Objects.FriendsFriendStatusStatus

data FriendsFriendExtendedStatus = FriendsFriendExtendedStatus
  { friendsFriendExtendedStatus_FriendStatus :: FriendsFriendStatusStatus
  , friendsFriendExtendedStatus_UserId :: Int
  , friendsFriendExtendedStatus_Sign :: Maybe Text
  , friendsFriendExtendedStatus_IsRequestUnread :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON FriendsFriendExtendedStatus where
  parseJSON = withObject "FriendsFriendExtendedStatus" \o -> FriendsFriendExtendedStatus
    <$> o .: "friend_status"
    <*> o .: "user_id"
    <*> o .:? "sign"
    <*> o .:? "is_request_unread"
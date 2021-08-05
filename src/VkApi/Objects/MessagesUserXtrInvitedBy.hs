module VkApi.Objects.MessagesUserXtrInvitedBy where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.FriendsFriendStatusStatus
import VkApi.Objects.FriendsRequestsMutual
import VkApi.Objects.UsersOnlineInfo
import VkApi.Objects.BaseSex
import VkApi.Objects.UsersUserType

data MessagesUserXtrInvitedBy = MessagesUserXtrInvitedBy
  { messagesUserXtrInvitedBy_Deactivated :: Maybe Text
  , messagesUserXtrInvitedBy_Id :: Int
  , messagesUserXtrInvitedBy_LastName :: Text
  , messagesUserXtrInvitedBy_FirstName :: Text
  , messagesUserXtrInvitedBy_IsClosed :: Maybe Bool
  , messagesUserXtrInvitedBy_CanAccessClosed :: Maybe Bool
  , messagesUserXtrInvitedBy_Hidden :: Maybe Int
  , messagesUserXtrInvitedBy_Online :: Maybe BaseBoolInt
  , messagesUserXtrInvitedBy_FriendStatus :: Maybe FriendsFriendStatusStatus
  , messagesUserXtrInvitedBy_OnlineApp :: Maybe Int
  , messagesUserXtrInvitedBy_Trending :: Maybe BaseBoolInt
  , messagesUserXtrInvitedBy_OnlineMobile :: Maybe BaseBoolInt
  , messagesUserXtrInvitedBy_Mutual :: Maybe FriendsRequestsMutual
  , messagesUserXtrInvitedBy_ScreenName :: Maybe Text
  , messagesUserXtrInvitedBy_Verified :: Maybe BaseBoolInt
  , messagesUserXtrInvitedBy_OnlineInfo :: Maybe UsersOnlineInfo
  , messagesUserXtrInvitedBy_Photo50 :: Maybe Text
  , messagesUserXtrInvitedBy_Sex :: Maybe BaseSex
  , messagesUserXtrInvitedBy_Photo100 :: Maybe Text
  , messagesUserXtrInvitedBy_Type :: Maybe UsersUserType
  , messagesUserXtrInvitedBy_InvitedBy :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesUserXtrInvitedBy where
  parseJSON = withObject "MessagesUserXtrInvitedBy" \o -> MessagesUserXtrInvitedBy
    <$> o .:? "deactivated"
    <*> o .: "id"
    <*> o .: "last_name"
    <*> o .: "first_name"
    <*> o .:? "is_closed"
    <*> o .:? "can_access_closed"
    <*> o .:? "hidden"
    <*> o .:? "online"
    <*> o .:? "friend_status"
    <*> o .:? "online_app"
    <*> o .:? "trending"
    <*> o .:? "online_mobile"
    <*> o .:? "mutual"
    <*> o .:? "screen_name"
    <*> o .:? "verified"
    <*> o .:? "online_info"
    <*> o .:? "photo_50"
    <*> o .:? "sex"
    <*> o .:? "photo_100"
    <*> o .:? "type"
    <*> o .:? "invited_by"
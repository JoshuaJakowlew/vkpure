module VkApi.Objects.UsersUserXtrType where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.FriendsFriendStatusStatus
import VkApi.Objects.FriendsRequestsMutual
import VkApi.Objects.UsersOnlineInfo
import VkApi.Objects.BaseSex
import VkApi.Objects.UsersUserType

data UsersUserXtrType = UsersUserXtrType
  { usersUserXtrType_Deactivated :: Maybe Text
  , usersUserXtrType_Id :: Int
  , usersUserXtrType_LastName :: Text
  , usersUserXtrType_FirstName :: Text
  , usersUserXtrType_IsClosed :: Maybe Bool
  , usersUserXtrType_CanAccessClosed :: Maybe Bool
  , usersUserXtrType_Hidden :: Maybe Int
  , usersUserXtrType_Online :: Maybe BaseBoolInt
  , usersUserXtrType_FriendStatus :: Maybe FriendsFriendStatusStatus
  , usersUserXtrType_OnlineApp :: Maybe Int
  , usersUserXtrType_Trending :: Maybe BaseBoolInt
  , usersUserXtrType_OnlineMobile :: Maybe BaseBoolInt
  , usersUserXtrType_Mutual :: Maybe FriendsRequestsMutual
  , usersUserXtrType_ScreenName :: Maybe Text
  , usersUserXtrType_Verified :: Maybe BaseBoolInt
  , usersUserXtrType_OnlineInfo :: Maybe UsersOnlineInfo
  , usersUserXtrType_Photo50 :: Maybe Text
  , usersUserXtrType_Sex :: Maybe BaseSex
  , usersUserXtrType_Photo100 :: Maybe Text
  , usersUserXtrType_Type :: Maybe UsersUserType
  } deriving (Show, Generic)

instance FromJSON UsersUserXtrType where
  parseJSON = withObject "UsersUserXtrType" \o -> UsersUserXtrType
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
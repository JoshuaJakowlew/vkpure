module VkApi.Objects.UsersUser where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.FriendsFriendStatusStatus
import VkApi.Objects.FriendsRequestsMutual
import VkApi.Objects.UsersOnlineInfo
import VkApi.Objects.BaseSex

data UsersUser = UsersUser
  { usersUser_Deactivated :: Maybe Text
  , usersUser_Id :: Int
  , usersUser_LastName :: Text
  , usersUser_FirstName :: Text
  , usersUser_IsClosed :: Maybe Bool
  , usersUser_CanAccessClosed :: Maybe Bool
  , usersUser_Hidden :: Maybe Int
  , usersUser_Online :: Maybe BaseBoolInt
  , usersUser_FriendStatus :: Maybe FriendsFriendStatusStatus
  , usersUser_OnlineApp :: Maybe Int
  , usersUser_Trending :: Maybe BaseBoolInt
  , usersUser_OnlineMobile :: Maybe BaseBoolInt
  , usersUser_Mutual :: Maybe FriendsRequestsMutual
  , usersUser_ScreenName :: Maybe Text
  , usersUser_Verified :: Maybe BaseBoolInt
  , usersUser_OnlineInfo :: Maybe UsersOnlineInfo
  , usersUser_Photo50 :: Maybe Text
  , usersUser_Sex :: Maybe BaseSex
  , usersUser_Photo100 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersUser where
  parseJSON = withObject "UsersUser" \o -> UsersUser
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
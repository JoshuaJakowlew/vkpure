module VkApi.Objects.UsersOnlineInfo where

import VkApi.Objects.Utils



data UsersOnlineInfo = UsersOnlineInfo
  { usersOnlineInfo_Status :: Maybe Text
  , usersOnlineInfo_Visible :: Bool
  , usersOnlineInfo_AppId :: Maybe Int
  , usersOnlineInfo_LastSeen :: Maybe Int
  , usersOnlineInfo_IsMobile :: Maybe Bool
  , usersOnlineInfo_IsOnline :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON UsersOnlineInfo where
  parseJSON = withObject "UsersOnlineInfo" \o -> UsersOnlineInfo
    <$> o .:? "status"
    <*> o .: "visible"
    <*> o .:? "app_id"
    <*> o .:? "last_seen"
    <*> o .:? "is_mobile"
    <*> o .:? "is_online"
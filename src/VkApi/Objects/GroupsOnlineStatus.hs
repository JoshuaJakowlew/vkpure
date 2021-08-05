module VkApi.Objects.GroupsOnlineStatus where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsOnlineStatusType

data GroupsOnlineStatus = GroupsOnlineStatus
  { groupsOnlineStatus_Status :: GroupsOnlineStatusType
  , groupsOnlineStatus_Minutes :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON GroupsOnlineStatus where
  parseJSON = withObject "GroupsOnlineStatus" \o -> GroupsOnlineStatus
    <$> o .: "status"
    <*> o .:? "minutes"
module VkApi.Objects.GroupsOwnerXtrBanInfo where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroup
import VkApi.Objects.GroupsBanInfo
import VkApi.Objects.UsersUser
import VkApi.Objects.GroupsOwnerXtrBanInfoType

data GroupsOwnerXtrBanInfo = GroupsOwnerXtrBanInfo
  { groupsOwnerXtrBanInfo_Group :: Maybe GroupsGroup
  , groupsOwnerXtrBanInfo_BanInfo :: Maybe GroupsBanInfo
  , groupsOwnerXtrBanInfo_Profile :: Maybe UsersUser
  , groupsOwnerXtrBanInfo_Type :: Maybe GroupsOwnerXtrBanInfoType
  } deriving (Show, Generic)

instance FromJSON GroupsOwnerXtrBanInfo where
  parseJSON = withObject "GroupsOwnerXtrBanInfo" \o -> GroupsOwnerXtrBanInfo
    <$> o .:? "group"
    <*> o .:? "ban_info"
    <*> o .:? "profile"
    <*> o .:? "type"
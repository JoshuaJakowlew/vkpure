module VkApi.Objects.GroupsMemberRole where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsMemberRolePermission
import VkApi.Objects.GroupsMemberRoleStatus

data GroupsMemberRole = GroupsMemberRole
  { groupsMemberRole_Permissions :: Maybe [GroupsMemberRolePermission]
  , groupsMemberRole_Id :: Int
  , groupsMemberRole_Role :: Maybe GroupsMemberRoleStatus
  } deriving (Show, Generic)

instance FromJSON GroupsMemberRole where
  parseJSON = withObject "GroupsMemberRole" \o -> GroupsMemberRole
    <$> o .:? "permissions"
    <*> o .: "id"
    <*> o .:? "role"
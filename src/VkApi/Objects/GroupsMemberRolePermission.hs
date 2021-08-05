module VkApi.Objects.GroupsMemberRolePermission where

import VkApi.Objects.Utils



data GroupsMemberRolePermission = GroupsMemberRolePermissionAds
  deriving (Show, Generic)

instance FromJSON GroupsMemberRolePermission where
  parseJSON = withText "GroupsMemberRolePermission" \ t -> case t of 
    "ads" -> pure GroupsMemberRolePermissionAds
    _ -> fail "GroupsMemberRolePermission: doesnt match case"

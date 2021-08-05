module VkApi.Objects.GroupsGroupRole where

import VkApi.Objects.Utils



data GroupsGroupRole = GroupsGroupRoleModerator | GroupsGroupRoleEditor | GroupsGroupRoleAdministrator | GroupsGroupRoleAdvertiser
  deriving (Show, Generic)

instance FromJSON GroupsGroupRole where
  parseJSON = withText "GroupsGroupRole" \ t -> case t of 
    "moderator" -> pure GroupsGroupRoleModerator
    "editor" -> pure GroupsGroupRoleEditor
    "administrator" -> pure GroupsGroupRoleAdministrator
    "advertiser" -> pure GroupsGroupRoleAdvertiser
    _ -> fail "GroupsGroupRole: doesnt match case"

module VkApi.Objects.GroupsMemberRoleStatus where

import VkApi.Objects.Utils



data GroupsMemberRoleStatus = GroupsMemberRoleStatusModerator | GroupsMemberRoleStatusEditor | GroupsMemberRoleStatusAdministrator | GroupsMemberRoleStatusCreator
  deriving (Show, Generic)

instance FromJSON GroupsMemberRoleStatus where
  parseJSON = withText "GroupsMemberRoleStatus" \ t -> case t of 
    "moderator" -> pure GroupsMemberRoleStatusModerator
    "editor" -> pure GroupsMemberRoleStatusEditor
    "administrator" -> pure GroupsMemberRoleStatusAdministrator
    "creator" -> pure GroupsMemberRoleStatusCreator
    _ -> fail "GroupsMemberRoleStatus: doesnt match case"

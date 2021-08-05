module VkApi.Objects.GroupsRoleOptions where

import VkApi.Objects.Utils



data GroupsRoleOptions = GroupsRoleOptionsModerator | GroupsRoleOptionsEditor | GroupsRoleOptionsAdministrator | GroupsRoleOptionsCreator
  deriving (Show, Generic)

instance FromJSON GroupsRoleOptions where
  parseJSON = withText "GroupsRoleOptions" \ t -> case t of 
    "moderator" -> pure GroupsRoleOptionsModerator
    "editor" -> pure GroupsRoleOptionsEditor
    "administrator" -> pure GroupsRoleOptionsAdministrator
    "creator" -> pure GroupsRoleOptionsCreator
    _ -> fail "GroupsRoleOptions: doesnt match case"

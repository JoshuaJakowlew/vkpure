module VkApi.Objects.GroupsTokenPermissionSetting where

import VkApi.Objects.Utils



data GroupsTokenPermissionSetting = GroupsTokenPermissionSetting
  { groupsTokenPermissionSetting_Setting :: Int
  , groupsTokenPermissionSetting_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsTokenPermissionSetting where
  parseJSON = withObject "GroupsTokenPermissionSetting" \o -> GroupsTokenPermissionSetting
    <$> o .: "setting"
    <*> o .: "name"
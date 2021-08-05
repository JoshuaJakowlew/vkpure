module VkApi.Objects.GroupsSettingsTwitter where

import VkApi.Objects.Utils



data GroupsSettingsTwitter = GroupsSettingsTwitter
  { groupsSettingsTwitter_Status :: Text
  , groupsSettingsTwitter_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsSettingsTwitter where
  parseJSON = withObject "GroupsSettingsTwitter" \o -> GroupsSettingsTwitter
    <$> o .: "status"
    <*> o .:? "name"
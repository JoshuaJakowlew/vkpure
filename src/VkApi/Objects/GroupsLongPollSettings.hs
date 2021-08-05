module VkApi.Objects.GroupsLongPollSettings where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsLongPollEvents

data GroupsLongPollSettings = GroupsLongPollSettings
  { groupsLongPollSettings_ApiVersion :: Maybe Text
  , groupsLongPollSettings_Events :: GroupsLongPollEvents
  , groupsLongPollSettings_IsEnabled :: Bool
  } deriving (Show, Generic)

instance FromJSON GroupsLongPollSettings where
  parseJSON = withObject "GroupsLongPollSettings" \o -> GroupsLongPollSettings
    <$> o .:? "api_version"
    <*> o .: "events"
    <*> o .: "is_enabled"
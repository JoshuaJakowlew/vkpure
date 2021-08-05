module VkApi.Objects.GroupsCallbackSettings where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsLongPollEvents

data GroupsCallbackSettings = GroupsCallbackSettings
  { groupsCallbackSettings_ApiVersion :: Maybe Text
  , groupsCallbackSettings_Events :: Maybe GroupsLongPollEvents
  } deriving (Show, Generic)

instance FromJSON GroupsCallbackSettings where
  parseJSON = withObject "GroupsCallbackSettings" \o -> GroupsCallbackSettings
    <$> o .:? "api_version"
    <*> o .:? "events"
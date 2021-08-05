module VkApi.Objects.GroupsLiveCovers where

import VkApi.Objects.Utils



data GroupsLiveCovers = GroupsLiveCovers
  { groupsLiveCovers_IsScalable :: Maybe Bool
  , groupsLiveCovers_IsEnabled :: Bool
  , groupsLiveCovers_StoryIds :: Maybe [Text]
  } deriving (Show, Generic)

instance FromJSON GroupsLiveCovers where
  parseJSON = withObject "GroupsLiveCovers" \o -> GroupsLiveCovers
    <$> o .:? "is_scalable"
    <*> o .: "is_enabled"
    <*> o .:? "story_ids"
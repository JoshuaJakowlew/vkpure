module VkApi.Objects.GroupsCountersGroup where

import VkApi.Objects.Utils



data GroupsCountersGroup = GroupsCountersGroup
  { groupsCountersGroup_AudioPlaylists :: Maybe Int
  , groupsCountersGroup_Audios :: Maybe Int
  , groupsCountersGroup_Topics :: Maybe Int
  , groupsCountersGroup_Videos :: Maybe Int
  , groupsCountersGroup_Photos :: Maybe Int
  , groupsCountersGroup_Market :: Maybe Int
  , groupsCountersGroup_Albums :: Maybe Int
  , groupsCountersGroup_Docs :: Maybe Int
  , groupsCountersGroup_Addresses :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON GroupsCountersGroup where
  parseJSON = withObject "GroupsCountersGroup" \o -> GroupsCountersGroup
    <$> o .:? "audio_playlists"
    <*> o .:? "audios"
    <*> o .:? "topics"
    <*> o .:? "videos"
    <*> o .:? "photos"
    <*> o .:? "market"
    <*> o .:? "albums"
    <*> o .:? "docs"
    <*> o .:? "addresses"
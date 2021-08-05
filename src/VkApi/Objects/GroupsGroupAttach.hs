module VkApi.Objects.GroupsGroupAttach where

import VkApi.Objects.Utils



data GroupsGroupAttach = GroupsGroupAttach
  { groupsGroupAttach_Status :: Text
  , groupsGroupAttach_IsFavorite :: Bool
  , groupsGroupAttach_Id :: Int
  , groupsGroupAttach_Size :: Int
  , groupsGroupAttach_Text :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupAttach where
  parseJSON = withObject "GroupsGroupAttach" \o -> GroupsGroupAttach
    <$> o .: "status"
    <*> o .: "is_favorite"
    <*> o .: "id"
    <*> o .: "size"
    <*> o .: "text"
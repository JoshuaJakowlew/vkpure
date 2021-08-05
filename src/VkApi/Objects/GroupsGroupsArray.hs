module VkApi.Objects.GroupsGroupsArray where

import VkApi.Objects.Utils



data GroupsGroupsArray = GroupsGroupsArray
  { groupsGroupsArray_Items :: [Int]
  , groupsGroupsArray_Count :: Int
  } deriving (Show, Generic)

instance FromJSON GroupsGroupsArray where
  parseJSON = withObject "GroupsGroupsArray" \o -> GroupsGroupsArray
    <$> o .: "items"
    <*> o .: "count"
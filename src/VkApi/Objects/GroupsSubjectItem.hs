module VkApi.Objects.GroupsSubjectItem where

import VkApi.Objects.Utils



data GroupsSubjectItem = GroupsSubjectItem
  { groupsSubjectItem_Id :: Int
  , groupsSubjectItem_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsSubjectItem where
  parseJSON = withObject "GroupsSubjectItem" \o -> GroupsSubjectItem
    <$> o .: "id"
    <*> o .: "name"
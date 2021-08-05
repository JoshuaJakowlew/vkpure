module VkApi.Objects.GroupsGroupCategoryType where

import VkApi.Objects.Utils



data GroupsGroupCategoryType = GroupsGroupCategoryType
  { groupsGroupCategoryType_Id :: Int
  , groupsGroupCategoryType_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupCategoryType where
  parseJSON = withObject "GroupsGroupCategoryType" \o -> GroupsGroupCategoryType
    <$> o .: "id"
    <*> o .: "name"
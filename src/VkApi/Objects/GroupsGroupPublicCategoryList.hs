module VkApi.Objects.GroupsGroupPublicCategoryList where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroupCategoryType

data GroupsGroupPublicCategoryList = GroupsGroupPublicCategoryList
  { groupsGroupPublicCategoryList_Id :: Maybe Int
  , groupsGroupPublicCategoryList_Subcategories :: Maybe [GroupsGroupCategoryType]
  , groupsGroupPublicCategoryList_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupPublicCategoryList where
  parseJSON = withObject "GroupsGroupPublicCategoryList" \o -> GroupsGroupPublicCategoryList
    <$> o .:? "id"
    <*> o .:? "subcategories"
    <*> o .:? "name"
module VkApi.Objects.GroupsGroupCategoryFull where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroup
import VkApi.Objects.GroupsGroupCategory

data GroupsGroupCategoryFull = GroupsGroupCategoryFull
  { groupsGroupCategoryFull_PageCount :: Int
  , groupsGroupCategoryFull_PagePreviews :: [GroupsGroup]
  , groupsGroupCategoryFull_Id :: Int
  , groupsGroupCategoryFull_Subcategories :: Maybe [GroupsGroupCategory]
  , groupsGroupCategoryFull_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupCategoryFull where
  parseJSON = withObject "GroupsGroupCategoryFull" \o -> GroupsGroupCategoryFull
    <$> o .: "page_count"
    <*> o .: "page_previews"
    <*> o .: "id"
    <*> o .:? "subcategories"
    <*> o .: "name"
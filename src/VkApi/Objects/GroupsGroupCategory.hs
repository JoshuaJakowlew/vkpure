module VkApi.Objects.GroupsGroupCategory where

import VkApi.Objects.Utils

import VkApi.Objects.BaseObjectWithName

data GroupsGroupCategory = GroupsGroupCategory
  { groupsGroupCategory_Id :: Int
  , groupsGroupCategory_Subcategories :: Maybe [BaseObjectWithName]
  , groupsGroupCategory_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupCategory where
  parseJSON = withObject "GroupsGroupCategory" \o -> GroupsGroupCategory
    <$> o .: "id"
    <*> o .:? "subcategories"
    <*> o .: "name"
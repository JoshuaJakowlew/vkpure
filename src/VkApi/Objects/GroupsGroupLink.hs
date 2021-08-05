module VkApi.Objects.GroupsGroupLink where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data GroupsGroupLink = GroupsGroupLink
  { groupsGroupLink_Id :: Maybe Int
  , groupsGroupLink_Name :: Maybe Text
  , groupsGroupLink_Desc :: Maybe Text
  , groupsGroupLink_Url :: Maybe Text
  , groupsGroupLink_ImageProcessing :: Maybe BaseBoolInt
  , groupsGroupLink_EditTitle :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsGroupLink where
  parseJSON = withObject "GroupsGroupLink" \o -> GroupsGroupLink
    <$> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "desc"
    <*> o .:? "url"
    <*> o .:? "image_processing"
    <*> o .:? "edit_title"
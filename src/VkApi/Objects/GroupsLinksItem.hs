module VkApi.Objects.GroupsLinksItem where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data GroupsLinksItem = GroupsLinksItem
  { groupsLinksItem_Id :: Maybe Int
  , groupsLinksItem_Name :: Maybe Text
  , groupsLinksItem_Desc :: Maybe Text
  , groupsLinksItem_Photo50 :: Maybe Text
  , groupsLinksItem_Url :: Maybe Text
  , groupsLinksItem_EditTitle :: Maybe BaseBoolInt
  , groupsLinksItem_Photo100 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsLinksItem where
  parseJSON = withObject "GroupsLinksItem" \o -> GroupsLinksItem
    <$> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "desc"
    <*> o .:? "photo_50"
    <*> o .:? "url"
    <*> o .:? "edit_title"
    <*> o .:? "photo_100"
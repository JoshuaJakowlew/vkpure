module VkApi.Objects.GroupsContactsItem where

import VkApi.Objects.Utils



data GroupsContactsItem = GroupsContactsItem
  { groupsContactsItem_UserId :: Maybe Int
  , groupsContactsItem_Phone :: Maybe Text
  , groupsContactsItem_Email :: Maybe Text
  , groupsContactsItem_Desc :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsContactsItem where
  parseJSON = withObject "GroupsContactsItem" \o -> GroupsContactsItem
    <$> o .:? "user_id"
    <*> o .:? "phone"
    <*> o .:? "email"
    <*> o .:? "desc"
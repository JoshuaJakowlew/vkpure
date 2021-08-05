module VkApi.Objects.GroupsGroup where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.GroupsGroupIsClosed
import VkApi.Objects.GroupsGroupAdminLevel
import VkApi.Objects.GroupsGroupType

data GroupsGroup = GroupsGroup
  { groupsGroup_Deactivated :: Maybe Text
  , groupsGroup_Photo200 :: Maybe Text
  , groupsGroup_StartDate :: Maybe Int
  , groupsGroup_IsAdvertiser :: Maybe BaseBoolInt
  , groupsGroup_FinishDate :: Maybe Int
  , groupsGroup_Id :: Int
  , groupsGroup_Name :: Text
  , groupsGroup_IsClosed :: GroupsGroupIsClosed
  , groupsGroup_ScreenName :: Text
  , groupsGroup_Photo50 :: Maybe Text
  , groupsGroup_AdminLevel :: Maybe GroupsGroupAdminLevel
  , groupsGroup_Type :: Maybe GroupsGroupType
  , groupsGroup_IsMember :: Maybe BaseBoolInt
  , groupsGroup_Photo100 :: Maybe Text
  , groupsGroup_IsAdmin :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsGroup where
  parseJSON = withObject "GroupsGroup" \o -> GroupsGroup
    <$> o .:? "deactivated"
    <*> o .:? "photo_200"
    <*> o .:? "start_date"
    <*> o .:? "is_advertiser"
    <*> o .:? "finish_date"
    <*> o .: "id"
    <*> o .: "name"
    <*> o .: "is_closed"
    <*> o .: "screen_name"
    <*> o .:? "photo_50"
    <*> o .:? "admin_level"
    <*> o .:? "type"
    <*> o .:? "is_member"
    <*> o .:? "photo_100"
    <*> o .:? "is_admin"
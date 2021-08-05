module VkApi.Objects.SearchHint where

import VkApi.Objects.Utils

import VkApi.Objects.SearchHintSection
import VkApi.Objects.BaseLink
import VkApi.Objects.GroupsGroup
import VkApi.Objects.AppsApp
import VkApi.Objects.UsersUserMin
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.SearchHintType

data SearchHint = SearchHint
  { searchHint_Section :: Maybe SearchHintSection
  , searchHint_Link :: Maybe BaseLink
  , searchHint_Group :: Maybe GroupsGroup
  , searchHint_App :: Maybe AppsApp
  , searchHint_Description :: Text
  , searchHint_Profile :: Maybe UsersUserMin
  , searchHint_Global :: Maybe BaseBoolInt
  , searchHint_Type :: SearchHintType
  } deriving (Show, Generic)

instance FromJSON SearchHint where
  parseJSON = withObject "SearchHint" \o -> SearchHint
    <$> o .:? "section"
    <*> o .:? "link"
    <*> o .:? "group"
    <*> o .:? "app"
    <*> o .: "description"
    <*> o .:? "profile"
    <*> o .:? "global"
    <*> o .: "type"
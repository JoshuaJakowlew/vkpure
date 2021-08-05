module VkApi.Objects.PagesWikipageFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.PagesPrivacySettings

data PagesWikipageFull = PagesWikipageFull
  { pagesWikipageFull_CurrentUserCanEditAccess :: Maybe BaseBoolInt
  , pagesWikipageFull_WhoCanView :: PagesPrivacySettings
  , pagesWikipageFull_CreatorId :: Maybe Int
  , pagesWikipageFull_Views :: Int
  , pagesWikipageFull_Title :: Text
  , pagesWikipageFull_GroupId :: Int
  , pagesWikipageFull_Edited :: Int
  , pagesWikipageFull_Id :: Int
  , pagesWikipageFull_Html :: Maybe Text
  , pagesWikipageFull_Source :: Maybe Text
  , pagesWikipageFull_CurrentUserCanEdit :: Maybe BaseBoolInt
  , pagesWikipageFull_ViewUrl :: Text
  , pagesWikipageFull_EditorId :: Maybe Int
  , pagesWikipageFull_Created :: Int
  , pagesWikipageFull_WhoCanEdit :: PagesPrivacySettings
  } deriving (Show, Generic)

instance FromJSON PagesWikipageFull where
  parseJSON = withObject "PagesWikipageFull" \o -> PagesWikipageFull
    <$> o .:? "current_user_can_edit_access"
    <*> o .: "who_can_view"
    <*> o .:? "creator_id"
    <*> o .: "views"
    <*> o .: "title"
    <*> o .: "group_id"
    <*> o .: "edited"
    <*> o .: "id"
    <*> o .:? "html"
    <*> o .:? "source"
    <*> o .:? "current_user_can_edit"
    <*> o .: "view_url"
    <*> o .:? "editor_id"
    <*> o .: "created"
    <*> o .: "who_can_edit"
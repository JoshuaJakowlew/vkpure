module VkApi.Objects.PagesWikipage where

import VkApi.Objects.Utils

import VkApi.Objects.PagesPrivacySettings

data PagesWikipage = PagesWikipage
  { pagesWikipage_CreatorName :: Maybe Int
  , pagesWikipage_WhoCanView :: PagesPrivacySettings
  , pagesWikipage_CreatorId :: Maybe Int
  , pagesWikipage_Views :: Int
  , pagesWikipage_Title :: Text
  , pagesWikipage_GroupId :: Int
  , pagesWikipage_Id :: Int
  , pagesWikipage_EditorName :: Maybe Text
  , pagesWikipage_EditorId :: Maybe Int
  , pagesWikipage_WhoCanEdit :: PagesPrivacySettings
  } deriving (Show, Generic)

instance FromJSON PagesWikipage where
  parseJSON = withObject "PagesWikipage" \o -> PagesWikipage
    <$> o .:? "creator_name"
    <*> o .: "who_can_view"
    <*> o .:? "creator_id"
    <*> o .: "views"
    <*> o .: "title"
    <*> o .: "group_id"
    <*> o .: "id"
    <*> o .:? "editor_name"
    <*> o .:? "editor_id"
    <*> o .: "who_can_edit"
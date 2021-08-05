module VkApi.Objects.DocsDoc where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.DocsDocPreview

data DocsDoc = DocsDoc
  { docsDoc_Ext :: Text
  , docsDoc_Title :: Text
  , docsDoc_Id :: Int
  , docsDoc_IsLicensed :: Maybe BaseBoolInt
  , docsDoc_Preview :: Maybe DocsDocPreview
  , docsDoc_AccessKey :: Maybe Text
  , docsDoc_Date :: Int
  , docsDoc_Tags :: Maybe [Text]
  , docsDoc_Url :: Maybe Text
  , docsDoc_OwnerId :: Int
  , docsDoc_Type :: Int
  , docsDoc_Size :: Int
  } deriving (Show, Generic)

instance FromJSON DocsDoc where
  parseJSON = withObject "DocsDoc" \o -> DocsDoc
    <$> o .: "ext"
    <*> o .: "title"
    <*> o .: "id"
    <*> o .:? "is_licensed"
    <*> o .:? "preview"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "tags"
    <*> o .:? "url"
    <*> o .: "owner_id"
    <*> o .: "type"
    <*> o .: "size"
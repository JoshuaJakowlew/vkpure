module VkApi.Objects.DocsDocTypes where

import VkApi.Objects.Utils



data DocsDocTypes = DocsDocTypes
  { docsDocTypes_Id :: Int
  , docsDocTypes_Name :: Text
  , docsDocTypes_Count :: Int
  } deriving (Show, Generic)

instance FromJSON DocsDocTypes where
  parseJSON = withObject "DocsDocTypes" \o -> DocsDocTypes
    <$> o .: "id"
    <*> o .: "name"
    <*> o .: "count"
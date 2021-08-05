module VkApi.Objects.DatabaseCity where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data DatabaseCity = DatabaseCity
  { databaseCity_Title :: Text
  , databaseCity_Id :: Int
  , databaseCity_Area :: Maybe Text
  , databaseCity_Important :: Maybe BaseBoolInt
  , databaseCity_Region :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON DatabaseCity where
  parseJSON = withObject "DatabaseCity" \o -> DatabaseCity
    <$> o .: "title"
    <*> o .: "id"
    <*> o .:? "area"
    <*> o .:? "important"
    <*> o .:? "region"
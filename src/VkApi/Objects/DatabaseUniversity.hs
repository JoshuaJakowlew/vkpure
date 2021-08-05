module VkApi.Objects.DatabaseUniversity where

import VkApi.Objects.Utils



data DatabaseUniversity = DatabaseUniversity
  { databaseUniversity_Title :: Maybe Text
  , databaseUniversity_Id :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON DatabaseUniversity where
  parseJSON = withObject "DatabaseUniversity" \o -> DatabaseUniversity
    <$> o .:? "title"
    <*> o .:? "id"
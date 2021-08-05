module VkApi.Objects.DatabaseSchool where

import VkApi.Objects.Utils



data DatabaseSchool = DatabaseSchool
  { databaseSchool_Title :: Maybe Text
  , databaseSchool_Id :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON DatabaseSchool where
  parseJSON = withObject "DatabaseSchool" \o -> DatabaseSchool
    <$> o .:? "title"
    <*> o .:? "id"
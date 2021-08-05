module VkApi.Objects.DatabaseFaculty where

import VkApi.Objects.Utils



data DatabaseFaculty = DatabaseFaculty
  { databaseFaculty_Title :: Maybe Text
  , databaseFaculty_Id :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON DatabaseFaculty where
  parseJSON = withObject "DatabaseFaculty" \o -> DatabaseFaculty
    <$> o .:? "title"
    <*> o .:? "id"
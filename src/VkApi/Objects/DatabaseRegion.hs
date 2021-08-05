module VkApi.Objects.DatabaseRegion where

import VkApi.Objects.Utils



data DatabaseRegion = DatabaseRegion
  { databaseRegion_Title :: Maybe Text
  , databaseRegion_Id :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON DatabaseRegion where
  parseJSON = withObject "DatabaseRegion" \o -> DatabaseRegion
    <$> o .:? "title"
    <*> o .:? "id"
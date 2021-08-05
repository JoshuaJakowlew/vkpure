module VkApi.Objects.DatabaseStation where

import VkApi.Objects.Utils



data DatabaseStation = DatabaseStation
  { databaseStation_CityId :: Maybe Int
  , databaseStation_Id :: Int
  , databaseStation_Color :: Maybe Text
  , databaseStation_Name :: Text
  } deriving (Show, Generic)

instance FromJSON DatabaseStation where
  parseJSON = withObject "DatabaseStation" \o -> DatabaseStation
    <$> o .:? "city_id"
    <*> o .: "id"
    <*> o .:? "color"
    <*> o .: "name"
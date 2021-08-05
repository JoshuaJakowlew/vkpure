module VkApi.Objects.AppsScope where

import VkApi.Objects.Utils



data AppsScope = AppsScope
  { appsScope_Title :: Maybe Text
  , appsScope_Name :: Text
  } deriving (Show, Generic)

instance FromJSON AppsScope where
  parseJSON = withObject "AppsScope" \o -> AppsScope
    <$> o .:? "title"
    <*> o .: "name"
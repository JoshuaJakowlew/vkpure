module VkApi.Objects.AppsAppMin where

import VkApi.Objects.Utils

import VkApi.Objects.AppsAppType

data AppsAppMin = AppsAppMin
  { appsAppMin_Title :: Text
  , appsAppMin_Icon576 :: Maybe Text
  , appsAppMin_Icon150 :: Maybe Text
  , appsAppMin_Id :: Int
  , appsAppMin_LoaderIcon :: Maybe Text
  , appsAppMin_BackgroundLoaderColor :: Maybe Text
  , appsAppMin_Icon139 :: Maybe Text
  , appsAppMin_AuthorOwnerId :: Maybe Int
  , appsAppMin_Icon278 :: Maybe Text
  , appsAppMin_Icon75 :: Maybe Text
  , appsAppMin_Type :: AppsAppType
  , appsAppMin_IsInstalled :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON AppsAppMin where
  parseJSON = withObject "AppsAppMin" \o -> AppsAppMin
    <$> o .: "title"
    <*> o .:? "icon_576"
    <*> o .:? "icon_150"
    <*> o .: "id"
    <*> o .:? "loader_icon"
    <*> o .:? "background_loader_color"
    <*> o .:? "icon_139"
    <*> o .:? "author_owner_id"
    <*> o .:? "icon_278"
    <*> o .:? "icon_75"
    <*> o .: "type"
    <*> o .:? "is_installed"
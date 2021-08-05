module VkApi.Objects.AppsApp where

import VkApi.Objects.Utils

import VkApi.Objects.AppsAppType
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.AppsAppLeaderboardType

data AppsApp = AppsApp
  { appsApp_Title :: Text
  , appsApp_Icon576 :: Maybe Text
  , appsApp_Icon150 :: Maybe Text
  , appsApp_Id :: Int
  , appsApp_LoaderIcon :: Maybe Text
  , appsApp_BackgroundLoaderColor :: Maybe Text
  , appsApp_Icon139 :: Maybe Text
  , appsApp_AuthorOwnerId :: Maybe Int
  , appsApp_Icon278 :: Maybe Text
  , appsApp_Icon75 :: Maybe Text
  , appsApp_Type :: AppsAppType
  , appsApp_IsInstalled :: Maybe Bool
  , appsApp_PushEnabled :: Maybe BaseBoolInt
  , appsApp_Banner1120 :: Maybe Text
  , appsApp_Friends :: Maybe [Int]
  , appsApp_IsNew :: Maybe BaseBoolInt
  , appsApp_Section :: Maybe Text
  , appsApp_GenreId :: Maybe Int
  , appsApp_IsInCatalog :: Maybe Int
  , appsApp_Genre :: Maybe Text
  , appsApp_Icon16 :: Maybe Text
  , appsApp_PublishedDate :: Maybe Int
  , appsApp_CatalogPosition :: Maybe Int
  , appsApp_International :: Maybe Bool
  , appsApp_MembersCount :: Maybe Int
  , appsApp_ScreenName :: Maybe Text
  , appsApp_AuthorUrl :: Maybe Text
  , appsApp_LeaderboardType :: Maybe AppsAppLeaderboardType
  , appsApp_Description :: Maybe Text
  , appsApp_Banner560 :: Maybe Text
  , appsApp_ScreenOrientation :: Maybe Int
  , appsApp_PlatformId :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AppsApp where
  parseJSON = withObject "AppsApp" \o -> AppsApp
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
    <*> o .:? "push_enabled"
    <*> o .:? "banner_1120"
    <*> o .:? "friends"
    <*> o .:? "is_new"
    <*> o .:? "section"
    <*> o .:? "genre_id"
    <*> o .:? "is_in_catalog"
    <*> o .:? "genre"
    <*> o .:? "icon_16"
    <*> o .:? "published_date"
    <*> o .:? "catalog_position"
    <*> o .:? "international"
    <*> o .:? "members_count"
    <*> o .:? "screen_name"
    <*> o .:? "author_url"
    <*> o .:? "leaderboard_type"
    <*> o .:? "description"
    <*> o .:? "banner_560"
    <*> o .:? "screen_orientation"
    <*> o .:? "platform_id"
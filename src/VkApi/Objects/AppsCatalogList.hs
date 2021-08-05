module VkApi.Objects.AppsCatalogList where

import VkApi.Objects.Utils

import VkApi.Objects.AppsApp
import VkApi.Objects.UsersUserMin

data AppsCatalogList = AppsCatalogList
  { appsCatalogList_Items :: [AppsApp]
  , appsCatalogList_Profiles :: Maybe [UsersUserMin]
  , appsCatalogList_Count :: Int
  } deriving (Show, Generic)

instance FromJSON AppsCatalogList where
  parseJSON = withObject "AppsCatalogList" \o -> AppsCatalogList
    <$> o .: "items"
    <*> o .:? "profiles"
    <*> o .: "count"
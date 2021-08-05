module VkApi.Objects.AppwidgetsPhotos where

import VkApi.Objects.Utils

import VkApi.Objects.AppwidgetsPhoto

data AppwidgetsPhotos = AppwidgetsPhotos
  { appwidgetsPhotos_Items :: Maybe [AppwidgetsPhoto]
  , appwidgetsPhotos_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AppwidgetsPhotos where
  parseJSON = withObject "AppwidgetsPhotos" \o -> AppwidgetsPhotos
    <$> o .:? "items"
    <*> o .:? "count"
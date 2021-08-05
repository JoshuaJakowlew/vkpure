module VkApi.Objects.AppwidgetsPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.BaseImage

data AppwidgetsPhoto = AppwidgetsPhoto
  { appwidgetsPhoto_Images :: [BaseImage]
  , appwidgetsPhoto_Id :: Text
  } deriving (Show, Generic)

instance FromJSON AppwidgetsPhoto where
  parseJSON = withObject "AppwidgetsPhoto" \o -> AppwidgetsPhoto
    <$> o .: "images"
    <*> o .: "id"
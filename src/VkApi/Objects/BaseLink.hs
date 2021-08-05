module VkApi.Objects.BaseLink where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLinkRating
import VkApi.Objects.BaseLinkProduct
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.VideoVideo
import VkApi.Objects.BaseLinkButton
import VkApi.Objects.LinkTargetObject
import VkApi.Objects.BaseLinkApplication

data BaseLink = BaseLink
  { baseLink_Rating :: Maybe BaseLinkRating
  , baseLink_IsFavorite :: Maybe Bool
  , baseLink_PreviewPage :: Maybe Text
  , baseLink_PreviewUrl :: Maybe Text
  , baseLink_Caption :: Maybe Text
  , baseLink_Product :: Maybe BaseLinkProduct
  , baseLink_Title :: Maybe Text
  , baseLink_Id :: Maybe Text
  , baseLink_Photo :: Maybe PhotosPhoto
  , baseLink_Video :: Maybe VideoVideo
  , baseLink_Button :: Maybe BaseLinkButton
  , baseLink_Description :: Maybe Text
  , baseLink_Url :: Text
  , baseLink_TargetObject :: Maybe LinkTargetObject
  , baseLink_IsExternal :: Maybe Bool
  , baseLink_Application :: Maybe BaseLinkApplication
  } deriving (Show, Generic)

instance FromJSON BaseLink where
  parseJSON = withObject "BaseLink" \o -> BaseLink
    <$> o .:? "rating"
    <*> o .:? "is_favorite"
    <*> o .:? "preview_page"
    <*> o .:? "preview_url"
    <*> o .:? "caption"
    <*> o .:? "product"
    <*> o .:? "title"
    <*> o .:? "id"
    <*> o .:? "photo"
    <*> o .:? "video"
    <*> o .:? "button"
    <*> o .:? "description"
    <*> o .: "url"
    <*> o .:? "target_object"
    <*> o .:? "is_external"
    <*> o .:? "application"
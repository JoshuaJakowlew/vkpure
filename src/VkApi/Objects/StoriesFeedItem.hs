module VkApi.Objects.StoriesFeedItem where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesPromoBlock
import VkApi.Objects.StoriesStory
import VkApi.Objects.AppsAppMin

data StoriesFeedItem = StoriesFeedItem
  { storiesFeedItem_Grouped :: Maybe [StoriesFeedItem]
  , storiesFeedItem_PromoData :: Maybe StoriesPromoBlock
  , storiesFeedItem_TrackCode :: Maybe Text
  , storiesFeedItem_Id :: Maybe Text
  , storiesFeedItem_Stories :: Maybe [StoriesStory]
  , storiesFeedItem_BirthdayUserId :: Maybe Int
  , storiesFeedItem_Name :: Maybe Text
  , storiesFeedItem_App :: Maybe AppsAppMin
  , storiesFeedItem_HasUnseen :: Maybe Bool
  , storiesFeedItem_Type :: Text
  } deriving (Show, Generic)

instance FromJSON StoriesFeedItem where
  parseJSON = withObject "StoriesFeedItem" \o -> StoriesFeedItem
    <$> o .:? "grouped"
    <*> o .:? "promo_data"
    <*> o .:? "track_code"
    <*> o .:? "id"
    <*> o .:? "stories"
    <*> o .:? "birthday_user_id"
    <*> o .:? "name"
    <*> o .:? "app"
    <*> o .:? "has_unseen"
    <*> o .: "type"
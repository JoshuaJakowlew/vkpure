module VkApi.Objects.MarketMarketItem where

import VkApi.Objects.Utils

import VkApi.Objects.MarketMarketItemAvailability
import VkApi.Objects.MarketMarketCategory
import VkApi.Objects.MarketPrice

data MarketMarketItem = MarketMarketItem
  { marketMarketItem_ExternalId :: Maybe Text
  , marketMarketItem_ButtonTitle :: Maybe Text
  , marketMarketItem_Availability :: MarketMarketItemAvailability
  , marketMarketItem_IsFavorite :: Maybe Bool
  , marketMarketItem_VariantsGroupingId :: Maybe Int
  , marketMarketItem_Title :: Text
  , marketMarketItem_Category :: MarketMarketCategory
  , marketMarketItem_Id :: Int
  , marketMarketItem_AccessKey :: Maybe Text
  , marketMarketItem_Date :: Maybe Int
  , marketMarketItem_IsMainVariant :: Maybe Bool
  , marketMarketItem_Description :: Text
  , marketMarketItem_Url :: Maybe Text
  , marketMarketItem_OwnerId :: Int
  , marketMarketItem_Price :: MarketPrice
  , marketMarketItem_Sku :: Maybe Text
  , marketMarketItem_ThumbPhoto :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON MarketMarketItem where
  parseJSON = withObject "MarketMarketItem" \o -> MarketMarketItem
    <$> o .:? "external_id"
    <*> o .:? "button_title"
    <*> o .: "availability"
    <*> o .:? "is_favorite"
    <*> o .:? "variants_grouping_id"
    <*> o .: "title"
    <*> o .: "category"
    <*> o .: "id"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .:? "is_main_variant"
    <*> o .: "description"
    <*> o .:? "url"
    <*> o .: "owner_id"
    <*> o .: "price"
    <*> o .:? "sku"
    <*> o .:? "thumb_photo"
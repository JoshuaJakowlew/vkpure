module VkApi.Objects.MarketOrderItem where

import VkApi.Objects.Utils

import VkApi.Objects.MarketMarketItem
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.MarketPrice

data MarketOrderItem = MarketOrderItem
  { marketOrderItem_Variants :: Maybe [Text]
  , marketOrderItem_Quantity :: Int
  , marketOrderItem_Title :: Maybe Text
  , marketOrderItem_Item :: MarketMarketItem
  , marketOrderItem_ItemId :: Int
  , marketOrderItem_Photo :: Maybe PhotosPhoto
  , marketOrderItem_OwnerId :: Int
  , marketOrderItem_Price :: MarketPrice
  } deriving (Show, Generic)

instance FromJSON MarketOrderItem where
  parseJSON = withObject "MarketOrderItem" \o -> MarketOrderItem
    <$> o .:? "variants"
    <*> o .: "quantity"
    <*> o .:? "title"
    <*> o .: "item"
    <*> o .: "item_id"
    <*> o .:? "photo"
    <*> o .: "owner_id"
    <*> o .: "price"
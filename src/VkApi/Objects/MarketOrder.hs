module VkApi.Objects.MarketOrder where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLink
import VkApi.Objects.MarketPrice
import VkApi.Objects.MarketOrderItem

data MarketOrder = MarketOrder
  { marketOrder_CancelInfo :: Maybe BaseLink
  , marketOrder_Status :: Int
  , marketOrder_MerchantComment :: Maybe Text
  , marketOrder_Address :: Maybe Text
  , marketOrder_Comment :: Maybe Text
  , marketOrder_UserId :: Int
  , marketOrder_Weight :: Maybe Int
  , marketOrder_TrackLink :: Maybe Text
  , marketOrder_GroupId :: Int
  , marketOrder_Id :: Int
  , marketOrder_ItemsCount :: Int
  , marketOrder_Date :: Int
  , marketOrder_DisplayOrderId :: Maybe Text
  , marketOrder_TrackNumber :: Maybe Text
  , marketOrder_TotalPrice :: MarketPrice
  , marketOrder_PreviewOrderItems :: Maybe [MarketOrderItem]
  } deriving (Show, Generic)

instance FromJSON MarketOrder where
  parseJSON = withObject "MarketOrder" \o -> MarketOrder
    <$> o .:? "cancel_info"
    <*> o .: "status"
    <*> o .:? "merchant_comment"
    <*> o .:? "address"
    <*> o .:? "comment"
    <*> o .: "user_id"
    <*> o .:? "weight"
    <*> o .:? "track_link"
    <*> o .: "group_id"
    <*> o .: "id"
    <*> o .: "items_count"
    <*> o .: "date"
    <*> o .:? "display_order_id"
    <*> o .:? "track_number"
    <*> o .: "total_price"
    <*> o .:? "preview_order_items"
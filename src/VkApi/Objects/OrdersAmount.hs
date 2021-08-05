module VkApi.Objects.OrdersAmount where

import VkApi.Objects.Utils

import VkApi.Objects.OrdersAmountItem

data OrdersAmount = OrdersAmount
  { ordersAmount_Amounts :: Maybe [OrdersAmountItem]
  , ordersAmount_Currency :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON OrdersAmount where
  parseJSON = withObject "OrdersAmount" \o -> OrdersAmount
    <$> o .:? "amounts"
    <*> o .:? "currency"
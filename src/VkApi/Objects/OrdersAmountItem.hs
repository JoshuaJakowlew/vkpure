module VkApi.Objects.OrdersAmountItem where

import VkApi.Objects.Utils



data OrdersAmountItem = OrdersAmountItem
  { ordersAmountItem_Amount :: Maybe Int
  , ordersAmountItem_Description :: Maybe Text
  , ordersAmountItem_Votes :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON OrdersAmountItem where
  parseJSON = withObject "OrdersAmountItem" \o -> OrdersAmountItem
    <$> o .:? "amount"
    <*> o .:? "description"
    <*> o .:? "votes"
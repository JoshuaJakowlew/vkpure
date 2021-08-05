module VkApi.Objects.OrdersOrder where

import VkApi.Objects.Utils



data OrdersOrder = OrdersOrder
  { ordersOrder_Status :: Maybe Text
  , ordersOrder_Amount :: Maybe Int
  , ordersOrder_ReceiverId :: Maybe Int
  , ordersOrder_UserId :: Maybe Int
  , ordersOrder_Id :: Maybe Int
  , ordersOrder_Item :: Maybe Text
  , ordersOrder_AppOrderId :: Maybe Int
  , ordersOrder_CancelTransactionId :: Maybe Int
  , ordersOrder_Date :: Maybe Int
  , ordersOrder_TransactionId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON OrdersOrder where
  parseJSON = withObject "OrdersOrder" \o -> OrdersOrder
    <$> o .:? "status"
    <*> o .:? "amount"
    <*> o .:? "receiver_id"
    <*> o .:? "user_id"
    <*> o .:? "id"
    <*> o .:? "item"
    <*> o .:? "app_order_id"
    <*> o .:? "cancel_transaction_id"
    <*> o .:? "date"
    <*> o .:? "transaction_id"
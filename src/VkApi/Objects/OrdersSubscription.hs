module VkApi.Objects.OrdersSubscription where

import VkApi.Objects.Utils



data OrdersSubscription = OrdersSubscription
  { ordersSubscription_Status :: Text
  , ordersSubscription_NextBillTime :: Maybe Int
  , ordersSubscription_PendingCancel :: Maybe Bool
  , ordersSubscription_UpdateTime :: Int
  , ordersSubscription_Title :: Maybe Text
  , ordersSubscription_PeriodStartTime :: Int
  , ordersSubscription_CancelReason :: Maybe Text
  , ordersSubscription_Id :: Int
  , ordersSubscription_ApplicationName :: Maybe Text
  , ordersSubscription_ItemId :: Text
  , ordersSubscription_TrialExpireTime :: Maybe Int
  , ordersSubscription_ExpireTime :: Maybe Int
  , ordersSubscription_CreateTime :: Int
  , ordersSubscription_AppId :: Maybe Int
  , ordersSubscription_PhotoUrl :: Maybe Text
  , ordersSubscription_Period :: Int
  , ordersSubscription_Price :: Int
  , ordersSubscription_TestMode :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON OrdersSubscription where
  parseJSON = withObject "OrdersSubscription" \o -> OrdersSubscription
    <$> o .: "status"
    <*> o .:? "next_bill_time"
    <*> o .:? "pending_cancel"
    <*> o .: "update_time"
    <*> o .:? "title"
    <*> o .: "period_start_time"
    <*> o .:? "cancel_reason"
    <*> o .: "id"
    <*> o .:? "application_name"
    <*> o .: "item_id"
    <*> o .:? "trial_expire_time"
    <*> o .:? "expire_time"
    <*> o .: "create_time"
    <*> o .:? "app_id"
    <*> o .:? "photo_url"
    <*> o .: "period"
    <*> o .: "price"
    <*> o .:? "test_mode"
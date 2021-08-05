module VkApi.Objects.DonutDonatorSubscriptionInfo where

import VkApi.Objects.Utils



data DonutDonatorSubscriptionInfo = DonutDonatorSubscriptionInfo
  { donutDonatorSubscriptionInfo_Status :: Text
  , donutDonatorSubscriptionInfo_Amount :: Int
  , donutDonatorSubscriptionInfo_NextPaymentDate :: Int
  , donutDonatorSubscriptionInfo_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON DonutDonatorSubscriptionInfo where
  parseJSON = withObject "DonutDonatorSubscriptionInfo" \o -> DonutDonatorSubscriptionInfo
    <$> o .: "status"
    <*> o .: "amount"
    <*> o .: "next_payment_date"
    <*> o .: "owner_id"
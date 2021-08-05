module VkApi.Objects.CallbackDonutSubscriptionCreate where

import VkApi.Objects.Utils



data CallbackDonutSubscriptionCreate = CallbackDonutSubscriptionCreate
  { callbackDonutSubscriptionCreate_Amount :: Int
  , callbackDonutSubscriptionCreate_UserId :: Maybe Int
  , callbackDonutSubscriptionCreate_AmountWithoutFee :: Double
  } deriving (Show, Generic)

instance FromJSON CallbackDonutSubscriptionCreate where
  parseJSON = withObject "CallbackDonutSubscriptionCreate" \o -> CallbackDonutSubscriptionCreate
    <$> o .: "amount"
    <*> o .:? "user_id"
    <*> o .: "amount_without_fee"
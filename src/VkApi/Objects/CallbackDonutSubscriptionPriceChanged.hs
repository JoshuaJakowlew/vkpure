module VkApi.Objects.CallbackDonutSubscriptionPriceChanged where

import VkApi.Objects.Utils



data CallbackDonutSubscriptionPriceChanged = CallbackDonutSubscriptionPriceChanged
  { callbackDonutSubscriptionPriceChanged_AmountOld :: Int
  , callbackDonutSubscriptionPriceChanged_AmountDiff :: Maybe Double
  , callbackDonutSubscriptionPriceChanged_UserId :: Maybe Int
  , callbackDonutSubscriptionPriceChanged_AmountNew :: Int
  , callbackDonutSubscriptionPriceChanged_AmountDiffWithoutFee :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON CallbackDonutSubscriptionPriceChanged where
  parseJSON = withObject "CallbackDonutSubscriptionPriceChanged" \o -> CallbackDonutSubscriptionPriceChanged
    <$> o .: "amount_old"
    <*> o .:? "amount_diff"
    <*> o .:? "user_id"
    <*> o .: "amount_new"
    <*> o .:? "amount_diff_without_fee"
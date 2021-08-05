module VkApi.Objects.CallbackDonutSubscriptionProlonged where

import VkApi.Objects.Utils



data CallbackDonutSubscriptionProlonged = CallbackDonutSubscriptionProlonged
  { callbackDonutSubscriptionProlonged_Amount :: Int
  , callbackDonutSubscriptionProlonged_UserId :: Maybe Int
  , callbackDonutSubscriptionProlonged_AmountWithoutFee :: Double
  } deriving (Show, Generic)

instance FromJSON CallbackDonutSubscriptionProlonged where
  parseJSON = withObject "CallbackDonutSubscriptionProlonged" \o -> CallbackDonutSubscriptionProlonged
    <$> o .: "amount"
    <*> o .:? "user_id"
    <*> o .: "amount_without_fee"
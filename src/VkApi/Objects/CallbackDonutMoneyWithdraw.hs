module VkApi.Objects.CallbackDonutMoneyWithdraw where

import VkApi.Objects.Utils



data CallbackDonutMoneyWithdraw = CallbackDonutMoneyWithdraw
  { callbackDonutMoneyWithdraw_Amount :: Double
  , callbackDonutMoneyWithdraw_AmountWithoutFee :: Double
  } deriving (Show, Generic)

instance FromJSON CallbackDonutMoneyWithdraw where
  parseJSON = withObject "CallbackDonutMoneyWithdraw" \o -> CallbackDonutMoneyWithdraw
    <$> o .: "amount"
    <*> o .: "amount_without_fee"
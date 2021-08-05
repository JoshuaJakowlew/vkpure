module VkApi.Objects.CallbackDonutMoneyWithdrawError where

import VkApi.Objects.Utils



data CallbackDonutMoneyWithdrawError = CallbackDonutMoneyWithdrawError
  { callbackDonutMoneyWithdrawError_Reason :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackDonutMoneyWithdrawError where
  parseJSON = withObject "CallbackDonutMoneyWithdrawError" \o -> CallbackDonutMoneyWithdrawError
    <$> o .: "reason"
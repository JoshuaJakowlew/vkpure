module VkApi.Objects.MarketPrice where

import VkApi.Objects.Utils

import VkApi.Objects.MarketCurrency

data MarketPrice = MarketPrice
  { marketPrice_Amount :: Text
  , marketPrice_OldAmount :: Maybe Text
  , marketPrice_OldAmountText :: Maybe Text
  , marketPrice_DiscountRate :: Maybe Int
  , marketPrice_Currency :: MarketCurrency
  , marketPrice_Text :: Text
  } deriving (Show, Generic)

instance FromJSON MarketPrice where
  parseJSON = withObject "MarketPrice" \o -> MarketPrice
    <$> o .: "amount"
    <*> o .:? "old_amount"
    <*> o .:? "old_amount_text"
    <*> o .:? "discount_rate"
    <*> o .: "currency"
    <*> o .: "text"
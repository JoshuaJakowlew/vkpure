module VkApi.Objects.MarketCurrency where

import VkApi.Objects.Utils



data MarketCurrency = MarketCurrency
  { marketCurrency_Title :: Text
  , marketCurrency_Id :: Int
  , marketCurrency_Name :: Text
  } deriving (Show, Generic)

instance FromJSON MarketCurrency where
  parseJSON = withObject "MarketCurrency" \o -> MarketCurrency
    <$> o .: "title"
    <*> o .: "id"
    <*> o .: "name"
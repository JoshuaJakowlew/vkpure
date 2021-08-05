module VkApi.Objects.BaseLinkProduct where

import VkApi.Objects.Utils

import VkApi.Objects.MarketPrice

data BaseLinkProduct = BaseLinkProduct
  { baseLinkProduct_OrdersCount :: Maybe Int
  , baseLinkProduct_Price :: MarketPrice
  , baseLinkProduct_Merchant :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseLinkProduct where
  parseJSON = withObject "BaseLinkProduct" \o -> BaseLinkProduct
    <$> o .:? "orders_count"
    <*> o .: "price"
    <*> o .:? "merchant"
module VkApi.Objects.MarketMarketCategoryTree where

import VkApi.Objects.Utils


data MarketMarketCategoryTree = MarketMarketCategoryTree
  { marketMarketCategoryTree_Children :: Maybe [MarketMarketCategoryTree]
  , marketMarketCategoryTree_Id :: Int
  , marketMarketCategoryTree_Name :: Text
  } deriving (Show, Generic)

instance FromJSON MarketMarketCategoryTree where
  parseJSON = withObject "MarketMarketCategoryTree" \o -> MarketMarketCategoryTree
    <$> o .:? "children"
    <*> o .: "id"
    <*> o .: "name"
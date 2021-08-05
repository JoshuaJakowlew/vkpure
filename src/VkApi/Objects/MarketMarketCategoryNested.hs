module VkApi.Objects.MarketMarketCategoryNested where

import VkApi.Objects.Utils



data MarketMarketCategoryNested = MarketMarketCategoryNested
  { marketMarketCategoryNested_Parent :: Maybe MarketMarketCategoryNested
  , marketMarketCategoryNested_Id :: Int
  , marketMarketCategoryNested_Name :: Text
  } deriving (Show, Generic)

instance FromJSON MarketMarketCategoryNested where
  parseJSON = withObject "MarketMarketCategoryNested" \o -> MarketMarketCategoryNested
    <$> o .:? "parent"
    <*> o .: "id"
    <*> o .: "name"
module VkApi.Objects.MarketMarketCategoryOld where

import VkApi.Objects.Utils

import VkApi.Objects.MarketSection

data MarketMarketCategoryOld = MarketMarketCategoryOld
  { marketMarketCategoryOld_Section :: MarketSection
  , marketMarketCategoryOld_Id :: Int
  , marketMarketCategoryOld_Name :: Text
  } deriving (Show, Generic)

instance FromJSON MarketMarketCategoryOld where
  parseJSON = withObject "MarketMarketCategoryOld" \o -> MarketMarketCategoryOld
    <$> o .: "section"
    <*> o .: "id"
    <*> o .: "name"
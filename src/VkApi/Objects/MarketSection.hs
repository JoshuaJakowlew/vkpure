module VkApi.Objects.MarketSection where

import VkApi.Objects.Utils



data MarketSection = MarketSection
  { marketSection_Id :: Int
  , marketSection_Name :: Text
  } deriving (Show, Generic)

instance FromJSON MarketSection where
  parseJSON = withObject "MarketSection" \o -> MarketSection
    <$> o .: "id"
    <*> o .: "name"
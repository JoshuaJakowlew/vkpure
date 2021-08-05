module VkApi.Objects.MarketMarketAlbum where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhoto

data MarketMarketAlbum = MarketMarketAlbum
  { marketMarketAlbum_Title :: Text
  , marketMarketAlbum_Id :: Int
  , marketMarketAlbum_UpdatedTime :: Int
  , marketMarketAlbum_Photo :: Maybe PhotosPhoto
  , marketMarketAlbum_OwnerId :: Int
  , marketMarketAlbum_Count :: Int
  } deriving (Show, Generic)

instance FromJSON MarketMarketAlbum where
  parseJSON = withObject "MarketMarketAlbum" \o -> MarketMarketAlbum
    <$> o .: "title"
    <*> o .: "id"
    <*> o .: "updated_time"
    <*> o .:? "photo"
    <*> o .: "owner_id"
    <*> o .: "count"
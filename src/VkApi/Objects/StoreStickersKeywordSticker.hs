module VkApi.Objects.StoreStickersKeywordSticker where

import VkApi.Objects.Utils



data StoreStickersKeywordSticker = StoreStickersKeywordSticker
  { storeStickersKeywordSticker_PackId :: Int
  , storeStickersKeywordSticker_StickerId :: Int
  } deriving (Show, Generic)

instance FromJSON StoreStickersKeywordSticker where
  parseJSON = withObject "StoreStickersKeywordSticker" \o -> StoreStickersKeywordSticker
    <$> o .: "pack_id"
    <*> o .: "sticker_id"
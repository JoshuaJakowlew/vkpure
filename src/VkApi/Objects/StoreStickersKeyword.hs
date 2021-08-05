module VkApi.Objects.StoreStickersKeyword where

import VkApi.Objects.Utils

import VkApi.Objects.StoreStickersKeywordSticker
import VkApi.Objects.StoreStickersKeywordStickers

data StoreStickersKeyword = StoreStickersKeyword
  { storeStickersKeyword_Stickers :: Maybe [StoreStickersKeywordSticker]
  , storeStickersKeyword_PromotedStickers :: Maybe StoreStickersKeywordStickers
  , storeStickersKeyword_UserStickers :: Maybe StoreStickersKeywordStickers
  , storeStickersKeyword_Words :: [Text]
  } deriving (Show, Generic)

instance FromJSON StoreStickersKeyword where
  parseJSON = withObject "StoreStickersKeyword" \o -> StoreStickersKeyword
    <$> o .:? "stickers"
    <*> o .:? "promoted_stickers"
    <*> o .:? "user_stickers"
    <*> o .: "words"
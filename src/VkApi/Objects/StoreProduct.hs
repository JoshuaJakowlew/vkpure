module VkApi.Objects.StoreProduct where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseImage
import VkApi.Objects.StoreProductIcon
import VkApi.Objects.BaseStickersList

data StoreProduct = StoreProduct
  { storeProduct_Purchased :: Maybe BaseBoolInt
  , storeProduct_IsNew :: Maybe Bool
  , storeProduct_Previews :: Maybe [BaseImage]
  , storeProduct_Icon :: Maybe StoreProductIcon
  , storeProduct_HasAnimation :: Maybe Bool
  , storeProduct_Title :: Maybe Text
  , storeProduct_StyleStickerIds :: Maybe [Int]
  , storeProduct_Id :: Int
  , storeProduct_Stickers :: Maybe BaseStickersList
  , storeProduct_Subtitle :: Maybe Text
  , storeProduct_Active :: Maybe BaseBoolInt
  , storeProduct_Type :: Text
  , storeProduct_PurchaseDate :: Maybe Int
  , storeProduct_Promoted :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON StoreProduct where
  parseJSON = withObject "StoreProduct" \o -> StoreProduct
    <$> o .:? "purchased"
    <*> o .:? "is_new"
    <*> o .:? "previews"
    <*> o .:? "icon"
    <*> o .:? "has_animation"
    <*> o .:? "title"
    <*> o .:? "style_sticker_ids"
    <*> o .: "id"
    <*> o .:? "stickers"
    <*> o .:? "subtitle"
    <*> o .:? "active"
    <*> o .: "type"
    <*> o .:? "purchase_date"
    <*> o .:? "promoted"
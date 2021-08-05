module VkApi.Objects.BaseStickerOld where

import VkApi.Objects.Utils



data BaseStickerOld = BaseStickerOld
  { baseStickerOld_Height :: Maybe Int
  , baseStickerOld_ProductId :: Maybe Int
  , baseStickerOld_Photo64 :: Maybe Text
  , baseStickerOld_Width :: Maybe Int
  , baseStickerOld_Id :: Maybe Int
  , baseStickerOld_Photo256 :: Maybe Text
  , baseStickerOld_Photo352 :: Maybe Text
  , baseStickerOld_Photo128 :: Maybe Text
  , baseStickerOld_Photo512 :: Maybe Text
  , baseStickerOld_IsAllowed :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON BaseStickerOld where
  parseJSON = withObject "BaseStickerOld" \o -> BaseStickerOld
    <$> o .:? "height"
    <*> o .:? "product_id"
    <*> o .:? "photo_64"
    <*> o .:? "width"
    <*> o .:? "id"
    <*> o .:? "photo_256"
    <*> o .:? "photo_352"
    <*> o .:? "photo_128"
    <*> o .:? "photo_512"
    <*> o .:? "is_allowed"
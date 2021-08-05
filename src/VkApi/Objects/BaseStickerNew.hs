module VkApi.Objects.BaseStickerNew where

import VkApi.Objects.Utils

import VkApi.Objects.BaseImage
import VkApi.Objects.BaseStickerAnimation

data BaseStickerNew = BaseStickerNew
  { baseStickerNew_Images :: Maybe [BaseImage]
  , baseStickerNew_ProductId :: Maybe Int
  , baseStickerNew_Animations :: Maybe [BaseStickerAnimation]
  , baseStickerNew_StickerId :: Maybe Int
  , baseStickerNew_ImagesWithBackground :: Maybe [BaseImage]
  , baseStickerNew_IsAllowed :: Maybe Bool
  , baseStickerNew_AnimationUrl :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseStickerNew where
  parseJSON = withObject "BaseStickerNew" \o -> BaseStickerNew
    <$> o .:? "images"
    <*> o .:? "product_id"
    <*> o .:? "animations"
    <*> o .:? "sticker_id"
    <*> o .:? "images_with_background"
    <*> o .:? "is_allowed"
    <*> o .:? "animation_url"
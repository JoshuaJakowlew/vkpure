module VkApi.Objects.BaseSticker where

import VkApi.Objects.Utils

import VkApi.Objects.BaseStickerOld
import VkApi.Objects.BaseStickerNew

data BaseSticker = BaseSticker1 BaseStickerOld | BaseSticker2 BaseStickerNew
  deriving (Show, Generic)

instance FromJSON BaseSticker where
  parseJSON = genericParseJSON defaultOptions { sumEncoding  = UntaggedValue }
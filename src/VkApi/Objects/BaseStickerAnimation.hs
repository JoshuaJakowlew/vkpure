module VkApi.Objects.BaseStickerAnimation where

import VkApi.Objects.Utils



data BaseStickerAnimation = BaseStickerAnimation
  { baseStickerAnimation_Url :: Maybe Text
  , baseStickerAnimation_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseStickerAnimation where
  parseJSON = withObject "BaseStickerAnimation" \o -> BaseStickerAnimation
    <$> o .:? "url"
    <*> o .:? "type"
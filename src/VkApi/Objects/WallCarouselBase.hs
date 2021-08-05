module VkApi.Objects.WallCarouselBase where

import VkApi.Objects.Utils



data WallCarouselBase = WallCarouselBase
  { wallCarouselBase_CarouselOffset :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallCarouselBase where
  parseJSON = withObject "WallCarouselBase" \o -> WallCarouselBase
    <$> o .:? "carousel_offset"
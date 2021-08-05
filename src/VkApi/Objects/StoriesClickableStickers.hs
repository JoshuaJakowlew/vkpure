module VkApi.Objects.StoriesClickableStickers where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesClickableSticker

data StoriesClickableStickers = StoriesClickableStickers
  { storiesClickableStickers_ClickableStickers :: [StoriesClickableSticker]
  , storiesClickableStickers_OriginalHeight :: Int
  , storiesClickableStickers_OriginalWidth :: Int
  } deriving (Show, Generic)

instance FromJSON StoriesClickableStickers where
  parseJSON = withObject "StoriesClickableStickers" \o -> StoriesClickableStickers
    <$> o .: "clickable_stickers"
    <*> o .: "original_height"
    <*> o .: "original_width"
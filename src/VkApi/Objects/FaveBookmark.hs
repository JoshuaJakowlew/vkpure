module VkApi.Objects.FaveBookmark where

import VkApi.Objects.Utils

import VkApi.Objects.MarketMarketItem
import VkApi.Objects.BaseLink
import VkApi.Objects.WallWallpostFull
import VkApi.Objects.FaveTag
import VkApi.Objects.VideoVideo
import VkApi.Objects.FaveBookmarkType

data FaveBookmark = FaveBookmark
  { faveBookmark_Product :: Maybe MarketMarketItem
  , faveBookmark_Link :: Maybe BaseLink
  , faveBookmark_Post :: Maybe WallWallpostFull
  , faveBookmark_Tags :: [FaveTag]
  , faveBookmark_Video :: Maybe VideoVideo
  , faveBookmark_AddedDate :: Int
  , faveBookmark_Type :: FaveBookmarkType
  , faveBookmark_Seen :: Bool
  } deriving (Show, Generic)

instance FromJSON FaveBookmark where
  parseJSON = withObject "FaveBookmark" \o -> FaveBookmark
    <$> o .:? "product"
    <*> o .:? "link"
    <*> o .:? "post"
    <*> o .: "tags"
    <*> o .:? "video"
    <*> o .: "added_date"
    <*> o .: "type"
    <*> o .: "seen"
module VkApi.Objects.WallCommentAttachment where

import VkApi.Objects.Utils

import VkApi.Objects.PagesWikipageFull
import VkApi.Objects.BaseLink
import VkApi.Objects.WallAttachedNote
import VkApi.Objects.MarketMarketAlbum
import VkApi.Objects.MarketMarketItem
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.BaseSticker
import VkApi.Objects.VideoVideo
import VkApi.Objects.AudioAudio
import VkApi.Objects.DocsDoc
import VkApi.Objects.WallCommentAttachmentType

data WallCommentAttachment = WallCommentAttachment
  { wallCommentAttachment_Page :: Maybe PagesWikipageFull
  , wallCommentAttachment_Link :: Maybe BaseLink
  , wallCommentAttachment_Note :: Maybe WallAttachedNote
  , wallCommentAttachment_MarketMarketAlbum :: Maybe MarketMarketAlbum
  , wallCommentAttachment_Market :: Maybe MarketMarketItem
  , wallCommentAttachment_Photo :: Maybe PhotosPhoto
  , wallCommentAttachment_Sticker :: Maybe BaseSticker
  , wallCommentAttachment_Video :: Maybe VideoVideo
  , wallCommentAttachment_Audio :: Maybe AudioAudio
  , wallCommentAttachment_Doc :: Maybe DocsDoc
  , wallCommentAttachment_Type :: WallCommentAttachmentType
  } deriving (Show, Generic)

instance FromJSON WallCommentAttachment where
  parseJSON = withObject "WallCommentAttachment" \o -> WallCommentAttachment
    <$> o .:? "page"
    <*> o .:? "link"
    <*> o .:? "note"
    <*> o .:? "market_market_album"
    <*> o .:? "market"
    <*> o .:? "photo"
    <*> o .:? "sticker"
    <*> o .:? "video"
    <*> o .:? "audio"
    <*> o .:? "doc"
    <*> o .: "type"
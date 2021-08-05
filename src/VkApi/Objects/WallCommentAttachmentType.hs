module VkApi.Objects.WallCommentAttachmentType where

import VkApi.Objects.Utils



data WallCommentAttachmentType = WallCommentAttachmentTypePhoto | WallCommentAttachmentTypeAudio | WallCommentAttachmentTypeVideo | WallCommentAttachmentTypeDoc | WallCommentAttachmentTypeLink | WallCommentAttachmentTypeNote | WallCommentAttachmentTypePage | WallCommentAttachmentTypeMarketMarketAlbum | WallCommentAttachmentTypeMarket | WallCommentAttachmentTypeSticker
  deriving (Show, Generic)

instance FromJSON WallCommentAttachmentType where
  parseJSON = withText "WallCommentAttachmentType" \ t -> case t of 
    "photo" -> pure WallCommentAttachmentTypePhoto
    "audio" -> pure WallCommentAttachmentTypeAudio
    "video" -> pure WallCommentAttachmentTypeVideo
    "doc" -> pure WallCommentAttachmentTypeDoc
    "link" -> pure WallCommentAttachmentTypeLink
    "note" -> pure WallCommentAttachmentTypeNote
    "page" -> pure WallCommentAttachmentTypePage
    "market_market_album" -> pure WallCommentAttachmentTypeMarketMarketAlbum
    "market" -> pure WallCommentAttachmentTypeMarket
    "sticker" -> pure WallCommentAttachmentTypeSticker
    _ -> fail "WallCommentAttachmentType: doesnt match case"

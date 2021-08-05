module VkApi.Objects.WallWallpostAttachmentType where

import VkApi.Objects.Utils



data WallWallpostAttachmentType = WallWallpostAttachmentTypePhoto | WallWallpostAttachmentTypePostedPhoto | WallWallpostAttachmentTypeAudio | WallWallpostAttachmentTypeVideo | WallWallpostAttachmentTypeDoc | WallWallpostAttachmentTypeLink | WallWallpostAttachmentTypeGraffiti | WallWallpostAttachmentTypeNote | WallWallpostAttachmentTypeApp | WallWallpostAttachmentTypePoll | WallWallpostAttachmentTypePage | WallWallpostAttachmentTypeAlbum | WallWallpostAttachmentTypePhotosList | WallWallpostAttachmentTypeMarketMarketAlbum | WallWallpostAttachmentTypeMarket | WallWallpostAttachmentTypeEvent | WallWallpostAttachmentTypeDonutLink | WallWallpostAttachmentTypeArticle | WallWallpostAttachmentTypeTextlive | WallWallpostAttachmentTypeTextpost
  deriving (Show, Generic)

instance FromJSON WallWallpostAttachmentType where
  parseJSON = withText "WallWallpostAttachmentType" \ t -> case t of 
    "photo" -> pure WallWallpostAttachmentTypePhoto
    "posted_photo" -> pure WallWallpostAttachmentTypePostedPhoto
    "audio" -> pure WallWallpostAttachmentTypeAudio
    "video" -> pure WallWallpostAttachmentTypeVideo
    "doc" -> pure WallWallpostAttachmentTypeDoc
    "link" -> pure WallWallpostAttachmentTypeLink
    "graffiti" -> pure WallWallpostAttachmentTypeGraffiti
    "note" -> pure WallWallpostAttachmentTypeNote
    "app" -> pure WallWallpostAttachmentTypeApp
    "poll" -> pure WallWallpostAttachmentTypePoll
    "page" -> pure WallWallpostAttachmentTypePage
    "album" -> pure WallWallpostAttachmentTypeAlbum
    "photos_list" -> pure WallWallpostAttachmentTypePhotosList
    "market_market_album" -> pure WallWallpostAttachmentTypeMarketMarketAlbum
    "market" -> pure WallWallpostAttachmentTypeMarket
    "event" -> pure WallWallpostAttachmentTypeEvent
    "donut_link" -> pure WallWallpostAttachmentTypeDonutLink
    "article" -> pure WallWallpostAttachmentTypeArticle
    "textlive" -> pure WallWallpostAttachmentTypeTextlive
    "textpost" -> pure WallWallpostAttachmentTypeTextpost
    _ -> fail "WallWallpostAttachmentType: doesnt match case"

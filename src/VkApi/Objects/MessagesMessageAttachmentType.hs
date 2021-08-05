module VkApi.Objects.MessagesMessageAttachmentType where

import VkApi.Objects.Utils



data MessagesMessageAttachmentType = MessagesMessageAttachmentTypePhoto | MessagesMessageAttachmentTypeAudio | MessagesMessageAttachmentTypeVideo | MessagesMessageAttachmentTypeDoc | MessagesMessageAttachmentTypeLink | MessagesMessageAttachmentTypeMarket | MessagesMessageAttachmentTypeMarketAlbum | MessagesMessageAttachmentTypeGift | MessagesMessageAttachmentTypeSticker | MessagesMessageAttachmentTypeWall | MessagesMessageAttachmentTypeWallReply | MessagesMessageAttachmentTypeArticle | MessagesMessageAttachmentTypePoll | MessagesMessageAttachmentTypeCall | MessagesMessageAttachmentTypeGraffiti | MessagesMessageAttachmentTypeAudioMessage
  deriving (Show, Generic)

instance FromJSON MessagesMessageAttachmentType where
  parseJSON = withText "MessagesMessageAttachmentType" \ t -> case t of 
    "photo" -> pure MessagesMessageAttachmentTypePhoto
    "audio" -> pure MessagesMessageAttachmentTypeAudio
    "video" -> pure MessagesMessageAttachmentTypeVideo
    "doc" -> pure MessagesMessageAttachmentTypeDoc
    "link" -> pure MessagesMessageAttachmentTypeLink
    "market" -> pure MessagesMessageAttachmentTypeMarket
    "market_album" -> pure MessagesMessageAttachmentTypeMarketAlbum
    "gift" -> pure MessagesMessageAttachmentTypeGift
    "sticker" -> pure MessagesMessageAttachmentTypeSticker
    "wall" -> pure MessagesMessageAttachmentTypeWall
    "wall_reply" -> pure MessagesMessageAttachmentTypeWallReply
    "article" -> pure MessagesMessageAttachmentTypeArticle
    "poll" -> pure MessagesMessageAttachmentTypePoll
    "call" -> pure MessagesMessageAttachmentTypeCall
    "graffiti" -> pure MessagesMessageAttachmentTypeGraffiti
    "audio_message" -> pure MessagesMessageAttachmentTypeAudioMessage
    _ -> fail "MessagesMessageAttachmentType: doesnt match case"

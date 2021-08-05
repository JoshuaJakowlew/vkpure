module VkApi.Objects.MessagesHistoryMessageAttachmentType where

import VkApi.Objects.Utils



data MessagesHistoryMessageAttachmentType = MessagesHistoryMessageAttachmentTypePhoto | MessagesHistoryMessageAttachmentTypeVideo | MessagesHistoryMessageAttachmentTypeAudio | MessagesHistoryMessageAttachmentTypeDoc | MessagesHistoryMessageAttachmentTypeLink | MessagesHistoryMessageAttachmentTypeMarket | MessagesHistoryMessageAttachmentTypeWall | MessagesHistoryMessageAttachmentTypeShare | MessagesHistoryMessageAttachmentTypeGraffiti | MessagesHistoryMessageAttachmentTypeAudioMessage
  deriving (Show, Generic)

instance FromJSON MessagesHistoryMessageAttachmentType where
  parseJSON = withText "MessagesHistoryMessageAttachmentType" \ t -> case t of 
    "photo" -> pure MessagesHistoryMessageAttachmentTypePhoto
    "video" -> pure MessagesHistoryMessageAttachmentTypeVideo
    "audio" -> pure MessagesHistoryMessageAttachmentTypeAudio
    "doc" -> pure MessagesHistoryMessageAttachmentTypeDoc
    "link" -> pure MessagesHistoryMessageAttachmentTypeLink
    "market" -> pure MessagesHistoryMessageAttachmentTypeMarket
    "wall" -> pure MessagesHistoryMessageAttachmentTypeWall
    "share" -> pure MessagesHistoryMessageAttachmentTypeShare
    "graffiti" -> pure MessagesHistoryMessageAttachmentTypeGraffiti
    "audio_message" -> pure MessagesHistoryMessageAttachmentTypeAudioMessage
    _ -> fail "MessagesHistoryMessageAttachmentType: doesnt match case"

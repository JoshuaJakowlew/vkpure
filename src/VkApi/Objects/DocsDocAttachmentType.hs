module VkApi.Objects.DocsDocAttachmentType where

import VkApi.Objects.Utils



data DocsDocAttachmentType = DocsDocAttachmentTypeDoc | DocsDocAttachmentTypeGraffiti | DocsDocAttachmentTypeAudioMessage
  deriving (Show, Generic)

instance FromJSON DocsDocAttachmentType where
  parseJSON = withText "DocsDocAttachmentType" \ t -> case t of 
    "doc" -> pure DocsDocAttachmentTypeDoc
    "graffiti" -> pure DocsDocAttachmentTypeGraffiti
    "audio_message" -> pure DocsDocAttachmentTypeAudioMessage
    _ -> fail "DocsDocAttachmentType: doesnt match case"

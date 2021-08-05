module VkApi.Objects.MessagesHistoryMessageAttachment where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLink
import VkApi.Objects.MessagesGraffiti
import VkApi.Objects.MessagesAudioMessage ( MessagesAudioMessage )
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.VideoVideo
import VkApi.Objects.AudioAudio
import VkApi.Objects.DocsDoc
import VkApi.Objects.MessagesHistoryMessageAttachmentType

data MessagesHistoryMessageAttachment = MessagesHistoryMessageAttachment
  { messagesHistoryMessageAttachment_Link :: Maybe BaseLink
  , messagesHistoryMessageAttachment_Graffiti :: Maybe MessagesGraffiti
  , messagesHistoryMessageAttachment_Share :: Maybe BaseLink
  , messagesHistoryMessageAttachment_AudioMessage :: Maybe MessagesAudioMessage
  , messagesHistoryMessageAttachment_Market :: Maybe BaseLink
  , messagesHistoryMessageAttachment_Photo :: Maybe PhotosPhoto
  , messagesHistoryMessageAttachment_Video :: Maybe VideoVideo
  , messagesHistoryMessageAttachment_Wall :: Maybe BaseLink
  , messagesHistoryMessageAttachment_Audio :: Maybe AudioAudio
  , messagesHistoryMessageAttachment_Doc :: Maybe DocsDoc
  , messagesHistoryMessageAttachment_Type :: MessagesHistoryMessageAttachmentType
  } deriving (Show, Generic)

instance FromJSON MessagesHistoryMessageAttachment where
  parseJSON = withObject "MessagesHistoryMessageAttachment" \o -> MessagesHistoryMessageAttachment
    <$> o .:? "link"
    <*> o .:? "graffiti"
    <*> o .:? "share"
    <*> o .:? "audio_message"
    <*> o .:? "market"
    <*> o .:? "photo"
    <*> o .:? "video"
    <*> o .:? "wall"
    <*> o .:? "audio"
    <*> o .:? "doc"
    <*> o .: "type"
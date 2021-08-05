module VkApi.Objects.MessagesMessageAttachment where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesStory
import VkApi.Objects.BaseLink
import VkApi.Objects.MessagesGraffiti
import VkApi.Objects.CallsCall
import VkApi.Objects.MessagesAudioMessage
import VkApi.Objects.MarketMarketAlbum
import VkApi.Objects.PollsPoll
import VkApi.Objects.MarketMarketItem
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.GiftsLayout
import VkApi.Objects.BaseSticker
import VkApi.Objects.VideoVideo
import VkApi.Objects.WallWallpostFull
import VkApi.Objects.AudioAudio
import VkApi.Objects.WallWallComment
import VkApi.Objects.DocsDoc
import VkApi.Objects.MessagesMessageAttachmentType

data MessagesMessageAttachment = MessagesMessageAttachment
  { messagesMessageAttachment_Story :: Maybe StoriesStory
  , messagesMessageAttachment_Link :: Maybe BaseLink
  , messagesMessageAttachment_Graffiti :: Maybe MessagesGraffiti
  , messagesMessageAttachment_Call :: Maybe CallsCall
  , messagesMessageAttachment_AudioMessage :: Maybe MessagesAudioMessage
  , messagesMessageAttachment_MarketMarketAlbum :: Maybe MarketMarketAlbum
  , messagesMessageAttachment_Poll :: Maybe PollsPoll
  , messagesMessageAttachment_Market :: Maybe MarketMarketItem
  , messagesMessageAttachment_Photo :: Maybe PhotosPhoto
  , messagesMessageAttachment_Gift :: Maybe GiftsLayout
  , messagesMessageAttachment_Sticker :: Maybe BaseSticker
  , messagesMessageAttachment_Video :: Maybe VideoVideo
  , messagesMessageAttachment_Wall :: Maybe WallWallpostFull
  , messagesMessageAttachment_Audio :: Maybe AudioAudio
  , messagesMessageAttachment_WallReply :: Maybe WallWallComment
  , messagesMessageAttachment_Doc :: Maybe DocsDoc
  , messagesMessageAttachment_Type :: MessagesMessageAttachmentType
  } deriving (Show, Generic)

instance FromJSON MessagesMessageAttachment where
  parseJSON = withObject "MessagesMessageAttachment" \o -> MessagesMessageAttachment
    <$> o .:? "story"
    <*> o .:? "link"
    <*> o .:? "graffiti"
    <*> o .:? "call"
    <*> o .:? "audio_message"
    <*> o .:? "market_market_album"
    <*> o .:? "poll"
    <*> o .:? "market"
    <*> o .:? "photo"
    <*> o .:? "gift"
    <*> o .:? "sticker"
    <*> o .:? "video"
    <*> o .:? "wall"
    <*> o .:? "audio"
    <*> o .:? "wall_reply"
    <*> o .:? "doc"
    <*> o .: "type"
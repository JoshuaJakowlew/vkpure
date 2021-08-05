module VkApi.Objects.MessagesForeignMessage where

import VkApi.Objects.Utils

import VkApi.Objects.BaseGeo
import VkApi.Objects.MessagesMessageAttachment

data MessagesForeignMessage = MessagesForeignMessage
  { messagesForeignMessage_FromId :: Int
  , messagesForeignMessage_ReplyMessage :: Maybe MessagesForeignMessage
  , messagesForeignMessage_Payload :: Maybe Text
  , messagesForeignMessage_UpdateTime :: Maybe Int
  , messagesForeignMessage_Id :: Maybe Int
  , messagesForeignMessage_WasListened :: Maybe Bool
  , messagesForeignMessage_Date :: Int
  , messagesForeignMessage_ConversationMessageId :: Maybe Int
  , messagesForeignMessage_PeerId :: Maybe Int
  , messagesForeignMessage_Geo :: Maybe BaseGeo
  , messagesForeignMessage_Text :: Text
  , messagesForeignMessage_FwdMessages :: Maybe [MessagesForeignMessage]
  , messagesForeignMessage_Attachments :: Maybe [MessagesMessageAttachment]
  } deriving (Show, Generic)

instance FromJSON MessagesForeignMessage where
  parseJSON = withObject "MessagesForeignMessage" \o -> MessagesForeignMessage
    <$> o .: "from_id"
    <*> o .:? "reply_message"
    <*> o .:? "payload"
    <*> o .:? "update_time"
    <*> o .:? "id"
    <*> o .:? "was_listened"
    <*> o .: "date"
    <*> o .:? "conversation_message_id"
    <*> o .:? "peer_id"
    <*> o .:? "geo"
    <*> o .: "text"
    <*> o .:? "fwd_messages"
    <*> o .:? "attachments"
module VkApi.Objects.MessagesPinnedMessage where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesForeignMessage
import VkApi.Objects.MessagesKeyboard
import VkApi.Objects.BaseGeo
import VkApi.Objects.MessagesMessageAttachment

data MessagesPinnedMessage = MessagesPinnedMessage
  { messagesPinnedMessage_FromId :: Int
  , messagesPinnedMessage_ReplyMessage :: Maybe MessagesForeignMessage
  , messagesPinnedMessage_Keyboard :: Maybe MessagesKeyboard
  , messagesPinnedMessage_Id :: Int
  , messagesPinnedMessage_Date :: Int
  , messagesPinnedMessage_ConversationMessageId :: Maybe Int
  , messagesPinnedMessage_PeerId :: Int
  , messagesPinnedMessage_Geo :: Maybe BaseGeo
  , messagesPinnedMessage_Text :: Text
  , messagesPinnedMessage_FwdMessages :: Maybe [MessagesForeignMessage]
  , messagesPinnedMessage_Attachments :: Maybe [MessagesMessageAttachment]
  } deriving (Show, Generic)

instance FromJSON MessagesPinnedMessage where
  parseJSON = withObject "MessagesPinnedMessage" \o -> MessagesPinnedMessage
    <$> o .: "from_id"
    <*> o .:? "reply_message"
    <*> o .:? "keyboard"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "conversation_message_id"
    <*> o .: "peer_id"
    <*> o .:? "geo"
    <*> o .: "text"
    <*> o .:? "fwd_messages"
    <*> o .:? "attachments"
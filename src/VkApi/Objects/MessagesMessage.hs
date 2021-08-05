module VkApi.Objects.MessagesMessage where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesForeignMessage
import VkApi.Objects.MessagesKeyboard
import VkApi.Objects.MessagesMessageAction
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseGeo
import VkApi.Objects.MessagesMessageAttachment

data MessagesMessage = MessagesMessage
  { messagesMessage_IsHidden :: Maybe Bool
  , messagesMessage_FromId :: Int
  , messagesMessage_Ref :: Maybe Text
  , messagesMessage_ReplyMessage :: Maybe MessagesForeignMessage
  , messagesMessage_Payload :: Maybe Text
  , messagesMessage_RefSource :: Maybe Text
  , messagesMessage_UpdateTime :: Maybe Int
  , messagesMessage_Keyboard :: Maybe MessagesKeyboard
  , messagesMessage_Id :: Int
  , messagesMessage_PinnedAt :: Maybe Int
  , messagesMessage_WasListened :: Maybe Bool
  , messagesMessage_MembersCount :: Maybe Int
  , messagesMessage_AdminAuthorId :: Maybe Int
  , messagesMessage_Date :: Int
  , messagesMessage_IsSilent :: Maybe Bool
  , messagesMessage_RandomId :: Maybe Int
  , messagesMessage_Action :: Maybe MessagesMessageAction
  , messagesMessage_Important :: Maybe Bool
  , messagesMessage_Out :: BaseBoolInt
  , messagesMessage_ConversationMessageId :: Maybe Int
  , messagesMessage_PeerId :: Int
  , messagesMessage_Geo :: Maybe BaseGeo
  , messagesMessage_Deleted :: Maybe BaseBoolInt
  , messagesMessage_Text :: Text
  , messagesMessage_FwdMessages :: Maybe [MessagesForeignMessage]
  , messagesMessage_IsCropped :: Maybe Bool
  , messagesMessage_Attachments :: Maybe [MessagesMessageAttachment]
  } deriving (Show, Generic)

instance FromJSON MessagesMessage where
  parseJSON = withObject "MessagesMessage" \o -> MessagesMessage
    <$> o .:? "is_hidden"
    <*> o .: "from_id"
    <*> o .:? "ref"
    <*> o .:? "reply_message"
    <*> o .:? "payload"
    <*> o .:? "ref_source"
    <*> o .:? "update_time"
    <*> o .:? "keyboard"
    <*> o .: "id"
    <*> o .:? "pinned_at"
    <*> o .:? "was_listened"
    <*> o .:? "members_count"
    <*> o .:? "admin_author_id"
    <*> o .: "date"
    <*> o .:? "is_silent"
    <*> o .:? "random_id"
    <*> o .:? "action"
    <*> o .:? "important"
    <*> o .: "out"
    <*> o .:? "conversation_message_id"
    <*> o .: "peer_id"
    <*> o .:? "geo"
    <*> o .:? "deleted"
    <*> o .: "text"
    <*> o .:? "fwd_messages"
    <*> o .:? "is_cropped"
    <*> o .:? "attachments"
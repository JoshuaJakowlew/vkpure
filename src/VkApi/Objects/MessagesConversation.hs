module VkApi.Objects.MessagesConversation where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesOutReadBy
import VkApi.Objects.MessagesPushSettings
import VkApi.Objects.MessagesConversationCanWrite
import VkApi.Objects.MessagesConversationSortId
import VkApi.Objects.MessagesMessageRequestData
import VkApi.Objects.MessagesConversationPeer
import VkApi.Objects.MessagesChatSettings
import VkApi.Objects.MessagesKeyboard

data MessagesConversation = MessagesConversation
  { messagesConversation_IsMarkedUnread :: Maybe Bool
  , messagesConversation_OutReadBy :: Maybe MessagesOutReadBy
  , messagesConversation_PushSettings :: Maybe MessagesPushSettings
  , messagesConversation_CanWrite :: Maybe MessagesConversationCanWrite
  , messagesConversation_SortId :: Maybe MessagesConversationSortId
  , messagesConversation_UnreadCount :: Maybe Int
  , messagesConversation_MessageRequestData :: Maybe MessagesMessageRequestData
  , messagesConversation_InRead :: Int
  , messagesConversation_Peer :: MessagesConversationPeer
  , messagesConversation_LastMessageId :: Int
  , messagesConversation_ChatSettings :: Maybe MessagesChatSettings
  , messagesConversation_SpecialServiceType :: Maybe Text
  , messagesConversation_Mentions :: Maybe [Int]
  , messagesConversation_Unanswered :: Maybe Bool
  , messagesConversation_Important :: Maybe Bool
  , messagesConversation_CurrentKeyboard :: Maybe MessagesKeyboard
  , messagesConversation_OutRead :: Int
  } deriving (Show, Generic)

instance FromJSON MessagesConversation where
  parseJSON = withObject "MessagesConversation" \o -> MessagesConversation
    <$> o .:? "is_marked_unread"
    <*> o .:? "out_read_by"
    <*> o .:? "push_settings"
    <*> o .:? "can_write"
    <*> o .:? "sort_id"
    <*> o .:? "unread_count"
    <*> o .:? "message_request_data"
    <*> o .: "in_read"
    <*> o .: "peer"
    <*> o .: "last_message_id"
    <*> o .:? "chat_settings"
    <*> o .:? "special_service_type"
    <*> o .:? "mentions"
    <*> o .:? "unanswered"
    <*> o .:? "important"
    <*> o .:? "current_keyboard"
    <*> o .: "out_read"
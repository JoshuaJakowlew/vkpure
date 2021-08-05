module VkApi.Objects.MessagesConversationWithMessage where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage
import VkApi.Objects.MessagesConversation

data MessagesConversationWithMessage = MessagesConversationWithMessage
  { messagesConversationWithMessage_LastMessage :: Maybe MessagesMessage
  , messagesConversationWithMessage_Conversation :: MessagesConversation
  } deriving (Show, Generic)

instance FromJSON MessagesConversationWithMessage where
  parseJSON = withObject "MessagesConversationWithMessage" \o -> MessagesConversationWithMessage
    <$> o .:? "last_message"
    <*> o .: "conversation"
module VkApi.Objects.MessagesConversationPeerType where

import VkApi.Objects.Utils



data MessagesConversationPeerType = MessagesConversationPeerTypeChat | MessagesConversationPeerTypeEmail | MessagesConversationPeerTypeUser | MessagesConversationPeerTypeGroup
  deriving (Show, Generic)

instance FromJSON MessagesConversationPeerType where
  parseJSON = withText "MessagesConversationPeerType" \ t -> case t of 
    "chat" -> pure MessagesConversationPeerTypeChat
    "email" -> pure MessagesConversationPeerTypeEmail
    "user" -> pure MessagesConversationPeerTypeUser
    "group" -> pure MessagesConversationPeerTypeGroup
    _ -> fail "MessagesConversationPeerType: doesnt match case"

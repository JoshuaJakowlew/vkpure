module VkApi.Objects.MessagesConversationPeer where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesConversationPeerType

data MessagesConversationPeer = MessagesConversationPeer
  { messagesConversationPeer_Id :: Int
  , messagesConversationPeer_LocalId :: Maybe Int
  , messagesConversationPeer_Type :: MessagesConversationPeerType
  } deriving (Show, Generic)

instance FromJSON MessagesConversationPeer where
  parseJSON = withObject "MessagesConversationPeer" \o -> MessagesConversationPeer
    <$> o .: "id"
    <*> o .:? "local_id"
    <*> o .: "type"
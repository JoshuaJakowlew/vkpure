module VkApi.Objects.MessagesForward where

import VkApi.Objects.Utils



data MessagesForward = MessagesForward
  { messagesForward_ConversationMessageIds :: Maybe [Int]
  , messagesForward_IsReply :: Maybe Bool
  , messagesForward_OwnerId :: Maybe Int
  , messagesForward_PeerId :: Maybe Int
  , messagesForward_MessageIds :: Maybe [Int]
  } deriving (Show, Generic)

instance FromJSON MessagesForward where
  parseJSON = withObject "MessagesForward" \o -> MessagesForward
    <$> o .:? "conversation_message_ids"
    <*> o .:? "is_reply"
    <*> o .:? "owner_id"
    <*> o .:? "peer_id"
    <*> o .:? "message_ids"
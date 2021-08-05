module VkApi.Objects.MessagesConversationMember where

import VkApi.Objects.Utils



data MessagesConversationMember = MessagesConversationMember
  { messagesConversationMember_CanKick :: Maybe Bool
  , messagesConversationMember_InvitedBy :: Maybe Int
  , messagesConversationMember_MemberId :: Int
  , messagesConversationMember_RequestDate :: Maybe Int
  , messagesConversationMember_IsOwner :: Maybe Bool
  , messagesConversationMember_JoinDate :: Maybe Int
  , messagesConversationMember_IsMessageRequest :: Maybe Bool
  , messagesConversationMember_IsAdmin :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON MessagesConversationMember where
  parseJSON = withObject "MessagesConversationMember" \o -> MessagesConversationMember
    <$> o .:? "can_kick"
    <*> o .:? "invited_by"
    <*> o .: "member_id"
    <*> o .:? "request_date"
    <*> o .:? "is_owner"
    <*> o .:? "join_date"
    <*> o .:? "is_message_request"
    <*> o .:? "is_admin"
module VkApi.Objects.MessagesMessageAction where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessageActionPhoto
import VkApi.Objects.MessagesMessageActionStatus

data MessagesMessageAction = MessagesMessageAction
  { messagesMessageAction_Message :: Maybe Text
  , messagesMessageAction_MemberId :: Maybe Int
  , messagesMessageAction_Photo :: Maybe MessagesMessageActionPhoto
  , messagesMessageAction_Email :: Maybe Text
  , messagesMessageAction_ConversationMessageId :: Maybe Int
  , messagesMessageAction_Type :: MessagesMessageActionStatus
  , messagesMessageAction_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON MessagesMessageAction where
  parseJSON = withObject "MessagesMessageAction" \o -> MessagesMessageAction
    <$> o .:? "message"
    <*> o .:? "member_id"
    <*> o .:? "photo"
    <*> o .:? "email"
    <*> o .:? "conversation_message_id"
    <*> o .: "type"
    <*> o .:? "text"
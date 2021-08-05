module VkApi.Objects.MessagesHistoryAttachment where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesHistoryMessageAttachment

data MessagesHistoryAttachment = MessagesHistoryAttachment
  { messagesHistoryAttachment_FromId :: Int
  , messagesHistoryAttachment_MessageId :: Int
  , messagesHistoryAttachment_Attachment :: MessagesHistoryMessageAttachment
  , messagesHistoryAttachment_ForwardLevel :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesHistoryAttachment where
  parseJSON = withObject "MessagesHistoryAttachment" \o -> MessagesHistoryAttachment
    <$> o .: "from_id"
    <*> o .: "message_id"
    <*> o .: "attachment"
    <*> o .:? "forward_level"
module VkApi.Objects.MessagesConversationCanWrite where

import VkApi.Objects.Utils



data MessagesConversationCanWrite = MessagesConversationCanWrite
  { messagesConversationCanWrite_Allowed :: Bool
  , messagesConversationCanWrite_Reason :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesConversationCanWrite where
  parseJSON = withObject "MessagesConversationCanWrite" \o -> MessagesConversationCanWrite
    <$> o .: "allowed"
    <*> o .:? "reason"
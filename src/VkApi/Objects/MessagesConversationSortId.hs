module VkApi.Objects.MessagesConversationSortId where

import VkApi.Objects.Utils



data MessagesConversationSortId = MessagesConversationSortId
  { messagesConversationSortId_MinorId :: Int
  , messagesConversationSortId_MajorId :: Int
  } deriving (Show, Generic)

instance FromJSON MessagesConversationSortId where
  parseJSON = withObject "MessagesConversationSortId" \o -> MessagesConversationSortId
    <$> o .: "minor_id"
    <*> o .: "major_id"
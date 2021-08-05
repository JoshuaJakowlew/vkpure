module VkApi.Objects.MessagesMessagesArray where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage

data MessagesMessagesArray = MessagesMessagesArray
  { messagesMessagesArray_Items :: Maybe [MessagesMessage]
  , messagesMessagesArray_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesMessagesArray where
  parseJSON = withObject "MessagesMessagesArray" \o -> MessagesMessagesArray
    <$> o .:? "items"
    <*> o .:? "count"
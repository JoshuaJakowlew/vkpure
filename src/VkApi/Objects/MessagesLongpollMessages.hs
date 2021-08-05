module VkApi.Objects.MessagesLongpollMessages where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesMessage

data MessagesLongpollMessages = MessagesLongpollMessages
  { messagesLongpollMessages_Items :: Maybe [MessagesMessage]
  , messagesLongpollMessages_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesLongpollMessages where
  parseJSON = withObject "MessagesLongpollMessages" \o -> MessagesLongpollMessages
    <$> o .:? "items"
    <*> o .:? "count"
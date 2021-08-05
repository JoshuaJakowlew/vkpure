module VkApi.Objects.MessagesLastActivity where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data MessagesLastActivity = MessagesLastActivity
  { messagesLastActivity_Online :: BaseBoolInt
  , messagesLastActivity_Time :: Int
  } deriving (Show, Generic)

instance FromJSON MessagesLastActivity where
  parseJSON = withObject "MessagesLastActivity" \o -> MessagesLastActivity
    <$> o .: "online"
    <*> o .: "time"
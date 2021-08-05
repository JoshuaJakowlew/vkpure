module VkApi.Objects.MessagesLongpollParams where

import VkApi.Objects.Utils



data MessagesLongpollParams = MessagesLongpollParams
  { messagesLongpollParams_Ts :: Int
  , messagesLongpollParams_Key :: Text
  , messagesLongpollParams_Server :: Text
  , messagesLongpollParams_Pts :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesLongpollParams where
  parseJSON = withObject "MessagesLongpollParams" \o -> MessagesLongpollParams
    <$> o .: "ts"
    <*> o .: "key"
    <*> o .: "server"
    <*> o .:? "pts"
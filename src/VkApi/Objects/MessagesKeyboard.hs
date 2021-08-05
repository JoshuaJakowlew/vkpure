module VkApi.Objects.MessagesKeyboard where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesKeyboardButton

data MessagesKeyboard = MessagesKeyboard
  { messagesKeyboard_Inline :: Maybe Bool
  , messagesKeyboard_OneTime :: Bool
  , messagesKeyboard_Buttons :: [[MessagesKeyboardButton]]
  , messagesKeyboard_AuthorId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesKeyboard where
  parseJSON = withObject "MessagesKeyboard" \o -> MessagesKeyboard
    <$> o .:? "inline"
    <*> o .: "one_time"
    <*> o .: "buttons"
    <*> o .:? "author_id"
module VkApi.Objects.MessagesKeyboardButton where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesKeyboardButtonAction

data MessagesKeyboardButton = MessagesKeyboardButton
  { messagesKeyboardButton_Color :: Maybe Text
  , messagesKeyboardButton_Action :: MessagesKeyboardButtonAction
  } deriving (Show, Generic)

instance FromJSON MessagesKeyboardButton where
  parseJSON = withObject "MessagesKeyboardButton" \o -> MessagesKeyboardButton
    <$> o .:? "color"
    <*> o .: "action"
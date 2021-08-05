module VkApi.Objects.MessagesKeyboardButtonAction where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesTemplateActionTypeNames

data MessagesKeyboardButtonAction = MessagesKeyboardButtonAction
  { messagesKeyboardButtonAction_Payload :: Maybe Text
  , messagesKeyboardButtonAction_Link :: Maybe Text
  , messagesKeyboardButtonAction_Hash :: Maybe Text
  , messagesKeyboardButtonAction_Label :: Maybe Text
  , messagesKeyboardButtonAction_OwnerId :: Maybe Int
  , messagesKeyboardButtonAction_AppId :: Maybe Int
  , messagesKeyboardButtonAction_Type :: MessagesTemplateActionTypeNames
  } deriving (Show, Generic)

instance FromJSON MessagesKeyboardButtonAction where
  parseJSON = withObject "MessagesKeyboardButtonAction" \o -> MessagesKeyboardButtonAction
    <$> o .:? "payload"
    <*> o .:? "link"
    <*> o .:? "hash"
    <*> o .:? "label"
    <*> o .:? "owner_id"
    <*> o .:? "app_id"
    <*> o .: "type"
module VkApi.Objects.MessagesChat where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesChatPushSettings
import VkApi.Objects.BaseBoolInt

data MessagesChat = MessagesChat
  { messagesChat_PushSettings :: Maybe MessagesChatPushSettings
  , messagesChat_Photo200 :: Maybe Text
  , messagesChat_Left :: Maybe BaseBoolInt
  , messagesChat_Title :: Maybe Text
  , messagesChat_IsDefaultPhoto :: Maybe Bool
  , messagesChat_AdminId :: Int
  , messagesChat_Id :: Int
  , messagesChat_Photo50 :: Maybe Text
  , messagesChat_Kicked :: Maybe BaseBoolInt
  , messagesChat_Type :: Text
  , messagesChat_Photo100 :: Maybe Text
  , messagesChat_Users :: [Int]
  } deriving (Show, Generic)

instance FromJSON MessagesChat where
  parseJSON = withObject "MessagesChat" \o -> MessagesChat
    <$> o .:? "push_settings"
    <*> o .:? "photo_200"
    <*> o .:? "left"
    <*> o .:? "title"
    <*> o .:? "is_default_photo"
    <*> o .: "admin_id"
    <*> o .: "id"
    <*> o .:? "photo_50"
    <*> o .:? "kicked"
    <*> o .: "type"
    <*> o .:? "photo_100"
    <*> o .: "users"
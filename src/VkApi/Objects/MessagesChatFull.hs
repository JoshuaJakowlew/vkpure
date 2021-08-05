module VkApi.Objects.MessagesChatFull where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesChatPushSettings
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.MessagesUserXtrInvitedBy

data MessagesChatFull = MessagesChatFull
  { messagesChatFull_PushSettings :: Maybe MessagesChatPushSettings
  , messagesChatFull_Photo200 :: Maybe Text
  , messagesChatFull_Left :: Maybe BaseBoolInt
  , messagesChatFull_Title :: Maybe Text
  , messagesChatFull_AdminId :: Int
  , messagesChatFull_Id :: Int
  , messagesChatFull_Photo50 :: Maybe Text
  , messagesChatFull_Kicked :: Maybe BaseBoolInt
  , messagesChatFull_Type :: Text
  , messagesChatFull_Photo100 :: Maybe Text
  , messagesChatFull_Users :: [MessagesUserXtrInvitedBy]
  } deriving (Show, Generic)

instance FromJSON MessagesChatFull where
  parseJSON = withObject "MessagesChatFull" \o -> MessagesChatFull
    <$> o .:? "push_settings"
    <*> o .:? "photo_200"
    <*> o .:? "left"
    <*> o .:? "title"
    <*> o .: "admin_id"
    <*> o .: "id"
    <*> o .:? "photo_50"
    <*> o .:? "kicked"
    <*> o .: "type"
    <*> o .:? "photo_100"
    <*> o .: "users"
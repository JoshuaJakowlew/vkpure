module VkApi.Objects.NotificationsSendMessageItem where

import VkApi.Objects.Utils

import VkApi.Objects.NotificationsSendMessageError

data NotificationsSendMessageItem = NotificationsSendMessageItem
  { notificationsSendMessageItem_Status :: Maybe Bool
  , notificationsSendMessageItem_UserId :: Maybe Int
  , notificationsSendMessageItem_Error :: Maybe NotificationsSendMessageError
  } deriving (Show, Generic)

instance FromJSON NotificationsSendMessageItem where
  parseJSON = withObject "NotificationsSendMessageItem" \o -> NotificationsSendMessageItem
    <$> o .:? "status"
    <*> o .:? "user_id"
    <*> o .:? "error"
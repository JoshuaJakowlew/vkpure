module VkApi.Objects.NotificationsNotification where

import VkApi.Objects.Utils

import VkApi.Objects.NotificationsNotificationParent
import VkApi.Objects.NotificationsFeedback
import VkApi.Objects.NotificationsReply

data NotificationsNotification = NotificationsNotification
  { notificationsNotification_Parent :: Maybe NotificationsNotificationParent
  , notificationsNotification_Date :: Maybe Int
  , notificationsNotification_Feedback :: Maybe NotificationsFeedback
  , notificationsNotification_Type :: Maybe Text
  , notificationsNotification_Reply :: Maybe NotificationsReply
  } deriving (Show, Generic)

instance FromJSON NotificationsNotification where
  parseJSON = withObject "NotificationsNotification" \o -> NotificationsNotification
    <$> o .:? "parent"
    <*> o .:? "date"
    <*> o .:? "feedback"
    <*> o .:? "type"
    <*> o .:? "reply"
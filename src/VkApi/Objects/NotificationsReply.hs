module VkApi.Objects.NotificationsReply where

import VkApi.Objects.Utils



data NotificationsReply = NotificationsReply
  { notificationsReply_Id :: Maybe Int
  , notificationsReply_Date :: Maybe Int
  , notificationsReply_Text :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NotificationsReply where
  parseJSON = withObject "NotificationsReply" \o -> NotificationsReply
    <$> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "text"
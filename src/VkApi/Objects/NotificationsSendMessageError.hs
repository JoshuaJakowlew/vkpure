module VkApi.Objects.NotificationsSendMessageError where

import VkApi.Objects.Utils



data NotificationsSendMessageError = NotificationsSendMessageError
  { notificationsSendMessageError_Code :: Maybe Int
  , notificationsSendMessageError_Description :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NotificationsSendMessageError where
  parseJSON = withObject "NotificationsSendMessageError" \o -> NotificationsSendMessageError
    <$> o .:? "code"
    <*> o .:? "description"
module VkApi.Objects.NotificationsFeedback where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.BaseGeo
import VkApi.Objects.WallWallpostAttachment

data NotificationsFeedback = NotificationsFeedback
  { notificationsFeedback_FromId :: Maybe Int
  , notificationsFeedback_ToId :: Maybe Int
  , notificationsFeedback_Likes :: Maybe BaseLikesInfo
  , notificationsFeedback_Id :: Maybe Int
  , notificationsFeedback_Geo :: Maybe BaseGeo
  , notificationsFeedback_Text :: Maybe Text
  , notificationsFeedback_Attachments :: Maybe [WallWallpostAttachment]
  } deriving (Show, Generic)

instance FromJSON NotificationsFeedback where
  parseJSON = withObject "NotificationsFeedback" \o -> NotificationsFeedback
    <$> o .:? "from_id"
    <*> o .:? "to_id"
    <*> o .:? "likes"
    <*> o .:? "id"
    <*> o .:? "geo"
    <*> o .:? "text"
    <*> o .:? "attachments"
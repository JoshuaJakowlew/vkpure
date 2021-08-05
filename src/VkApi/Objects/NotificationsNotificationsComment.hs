module VkApi.Objects.NotificationsNotificationsComment where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallpost
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.BoardTopic
import VkApi.Objects.VideoVideo

data NotificationsNotificationsComment = NotificationsNotificationsComment
  { notificationsNotificationsComment_Post :: Maybe WallWallpost
  , notificationsNotificationsComment_Id :: Maybe Int
  , notificationsNotificationsComment_Date :: Maybe Int
  , notificationsNotificationsComment_Photo :: Maybe PhotosPhoto
  , notificationsNotificationsComment_Topic :: Maybe BoardTopic
  , notificationsNotificationsComment_Video :: Maybe VideoVideo
  , notificationsNotificationsComment_OwnerId :: Maybe Int
  , notificationsNotificationsComment_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NotificationsNotificationsComment where
  parseJSON = withObject "NotificationsNotificationsComment" \o -> NotificationsNotificationsComment
    <$> o .:? "post"
    <*> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "photo"
    <*> o .:? "topic"
    <*> o .:? "video"
    <*> o .:? "owner_id"
    <*> o .:? "text"
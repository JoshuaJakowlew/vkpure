module VkApi.Objects.PhotosCommentXtrPid where

import VkApi.Objects.Utils

import VkApi.Objects.CommentThread
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallCommentAttachment

data PhotosCommentXtrPid = PhotosCommentXtrPid
  { photosCommentXtrPid_FromId :: Int
  , photosCommentXtrPid_ParentsStack :: Maybe [Int]
  , photosCommentXtrPid_Thread :: Maybe CommentThread
  , photosCommentXtrPid_Likes :: Maybe BaseLikesInfo
  , photosCommentXtrPid_Id :: Int
  , photosCommentXtrPid_ReplyToComment :: Maybe Int
  , photosCommentXtrPid_Date :: Int
  , photosCommentXtrPid_ReplyToUser :: Maybe Int
  , photosCommentXtrPid_Pid :: Int
  , photosCommentXtrPid_Text :: Text
  , photosCommentXtrPid_Attachments :: Maybe [WallCommentAttachment]
  } deriving (Show, Generic)

instance FromJSON PhotosCommentXtrPid where
  parseJSON = withObject "PhotosCommentXtrPid" \o -> PhotosCommentXtrPid
    <$> o .: "from_id"
    <*> o .:? "parents_stack"
    <*> o .:? "thread"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .:? "reply_to_comment"
    <*> o .: "date"
    <*> o .:? "reply_to_user"
    <*> o .: "pid"
    <*> o .: "text"
    <*> o .:? "attachments"
module VkApi.Objects.WallCommentAndCommentThread where


import VkApi.Objects.Utils

import VkApi.Objects.WallWallCommentDonut
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallCommentAttachment

data WallWallComment = WallWallComment
  { wallWallComment_Donut :: Maybe WallWallCommentDonut
  , wallWallComment_FromId :: Int
  , wallWallComment_ParentsStack :: Maybe [Int]
  , wallWallComment_Thread :: Maybe CommentThread
  , wallWallComment_Likes :: Maybe BaseLikesInfo
  , wallWallComment_Id :: Int
  , wallWallComment_ReplyToComment :: Maybe Int
  , wallWallComment_Date :: Int
  , wallWallComment_OwnerId :: Maybe Int
  , wallWallComment_RealOffset :: Maybe Int
  , wallWallComment_ReplyToUser :: Maybe Int
  , wallWallComment_Deleted :: Maybe Bool
  , wallWallComment_Text :: Text
  , wallWallComment_Attachments :: Maybe [WallCommentAttachment]
  , wallWallComment_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallWallComment where
  parseJSON = withObject "WallWallComment" \o -> WallWallComment
    <$> o .:? "donut"
    <*> o .: "from_id"
    <*> o .:? "parents_stack"
    <*> o .:? "thread"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .:? "reply_to_comment"
    <*> o .: "date"
    <*> o .:? "owner_id"
    <*> o .:? "real_offset"
    <*> o .:? "reply_to_user"
    <*> o .:? "deleted"
    <*> o .: "text"
    <*> o .:? "attachments"
    <*> o .:? "post_id"

data CommentThread = CommentThread
  { commentThread_ShowReplyButton :: Maybe Bool
  , commentThread_Items :: Maybe [WallWallComment]
  , commentThread_CanPost :: Maybe Bool
  , commentThread_GroupsCanPost :: Maybe Bool
  , commentThread_Count :: Int
  } deriving (Show, Generic)

instance FromJSON CommentThread where
  parseJSON = withObject "CommentThread" \o -> CommentThread
    <$> o .:? "show_reply_button"
    <*> o .:? "items"
    <*> o .:? "can_post"
    <*> o .:? "groups_can_post"
    <*> o .: "count"
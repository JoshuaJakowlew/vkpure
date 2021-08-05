module VkApi.Objects.WidgetsWidgetComment where

import VkApi.Objects.Utils

import VkApi.Objects.WidgetsCommentMedia
import VkApi.Objects.UsersUserFull
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.WidgetsCommentReplies
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallCommentAttachment
import VkApi.Objects.BaseBoolInt

data WidgetsWidgetComment = WidgetsWidgetComment
  { widgetsWidgetComment_Media :: Maybe WidgetsCommentMedia
  , widgetsWidgetComment_FromId :: Int
  , widgetsWidgetComment_User :: Maybe UsersUserFull
  , widgetsWidgetComment_ToId :: Int
  , widgetsWidgetComment_Likes :: Maybe BaseLikesInfo
  , widgetsWidgetComment_Id :: Int
  , widgetsWidgetComment_PostType :: Int
  , widgetsWidgetComment_Date :: Int
  , widgetsWidgetComment_Reposts :: Maybe BaseRepostsInfo
  , widgetsWidgetComment_Comments :: Maybe WidgetsCommentReplies
  , widgetsWidgetComment_Text :: Text
  , widgetsWidgetComment_PostSource :: Maybe WallPostSource
  , widgetsWidgetComment_Attachments :: Maybe [WallCommentAttachment]
  , widgetsWidgetComment_CanDelete :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON WidgetsWidgetComment where
  parseJSON = withObject "WidgetsWidgetComment" \o -> WidgetsWidgetComment
    <$> o .:? "media"
    <*> o .: "from_id"
    <*> o .:? "user"
    <*> o .: "to_id"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .: "post_type"
    <*> o .: "date"
    <*> o .:? "reposts"
    <*> o .:? "comments"
    <*> o .: "text"
    <*> o .:? "post_source"
    <*> o .:? "attachments"
    <*> o .:? "can_delete"
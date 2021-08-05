module VkApi.Objects.BoardTopicComment where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallCommentAttachment

data BoardTopicComment = BoardTopicComment
  { boardTopicComment_CanEdit :: Maybe BaseBoolInt
  , boardTopicComment_FromId :: Int
  , boardTopicComment_Likes :: Maybe BaseLikesInfo
  , boardTopicComment_Id :: Int
  , boardTopicComment_Date :: Int
  , boardTopicComment_RealOffset :: Maybe Int
  , boardTopicComment_Text :: Text
  , boardTopicComment_Attachments :: Maybe [WallCommentAttachment]
  } deriving (Show, Generic)

instance FromJSON BoardTopicComment where
  parseJSON = withObject "BoardTopicComment" \o -> BoardTopicComment
    <$> o .:? "can_edit"
    <*> o .: "from_id"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "real_offset"
    <*> o .: "text"
    <*> o .:? "attachments"
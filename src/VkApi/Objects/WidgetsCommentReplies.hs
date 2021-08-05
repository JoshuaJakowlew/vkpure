module VkApi.Objects.WidgetsCommentReplies where

import VkApi.Objects.Utils

import VkApi.Objects.WidgetsCommentRepliesItem
import VkApi.Objects.BaseBoolInt

data WidgetsCommentReplies = WidgetsCommentReplies
  { widgetsCommentReplies_Replies :: Maybe [WidgetsCommentRepliesItem]
  , widgetsCommentReplies_CanPost :: Maybe BaseBoolInt
  , widgetsCommentReplies_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WidgetsCommentReplies where
  parseJSON = withObject "WidgetsCommentReplies" \o -> WidgetsCommentReplies
    <$> o .:? "replies"
    <*> o .:? "can_post"
    <*> o .:? "count"
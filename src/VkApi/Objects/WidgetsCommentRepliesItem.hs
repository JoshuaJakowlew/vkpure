module VkApi.Objects.WidgetsCommentRepliesItem where

import VkApi.Objects.Utils

import VkApi.Objects.UsersUserFull
import VkApi.Objects.WidgetsWidgetLikes

data WidgetsCommentRepliesItem = WidgetsCommentRepliesItem
  { widgetsCommentRepliesItem_User :: Maybe UsersUserFull
  , widgetsCommentRepliesItem_Likes :: Maybe WidgetsWidgetLikes
  , widgetsCommentRepliesItem_Date :: Maybe Int
  , widgetsCommentRepliesItem_Cid :: Maybe Int
  , widgetsCommentRepliesItem_Uid :: Maybe Int
  , widgetsCommentRepliesItem_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON WidgetsCommentRepliesItem where
  parseJSON = withObject "WidgetsCommentRepliesItem" \o -> WidgetsCommentRepliesItem
    <$> o .:? "user"
    <*> o .:? "likes"
    <*> o .:? "date"
    <*> o .:? "cid"
    <*> o .:? "uid"
    <*> o .:? "text"
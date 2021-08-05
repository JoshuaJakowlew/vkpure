module VkApi.Objects.WidgetsCommentMedia where

import VkApi.Objects.Utils

import VkApi.Objects.WidgetsCommentMediaType

data WidgetsCommentMedia = WidgetsCommentMedia
  { widgetsCommentMedia_ItemId :: Maybe Int
  , widgetsCommentMedia_ThumbSrc :: Maybe Text
  , widgetsCommentMedia_OwnerId :: Maybe Int
  , widgetsCommentMedia_Type :: Maybe WidgetsCommentMediaType
  } deriving (Show, Generic)

instance FromJSON WidgetsCommentMedia where
  parseJSON = withObject "WidgetsCommentMedia" \o -> WidgetsCommentMedia
    <$> o .:? "item_id"
    <*> o .:? "thumb_src"
    <*> o .:? "owner_id"
    <*> o .:? "type"
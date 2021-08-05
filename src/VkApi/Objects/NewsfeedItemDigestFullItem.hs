module VkApi.Objects.NewsfeedItemDigestFullItem where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallpostAttachment
import VkApi.Objects.WallWallpost

data NewsfeedItemDigestFullItem = NewsfeedItemDigestFullItem
  { newsfeedItemDigestFullItem_Attachment :: Maybe WallWallpostAttachment
  , newsfeedItemDigestFullItem_AttachmentIndex :: Maybe Int
  , newsfeedItemDigestFullItem_Post :: WallWallpost
  , newsfeedItemDigestFullItem_SourceName :: Maybe Text
  , newsfeedItemDigestFullItem_Style :: Maybe Text
  , newsfeedItemDigestFullItem_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemDigestFullItem where
  parseJSON = withObject "NewsfeedItemDigestFullItem" \o -> NewsfeedItemDigestFullItem
    <$> o .:? "attachment"
    <*> o .:? "attachment_index"
    <*> o .: "post"
    <*> o .:? "source_name"
    <*> o .:? "style"
    <*> o .:? "text"
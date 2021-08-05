module VkApi.Objects.WallWallpostToId where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallPostType
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.BaseCommentsInfo
import VkApi.Objects.WallGeo
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallWallpostAttachment

data WallWallpostToId = WallWallpostToId
  { wallWallpostToId_FromId :: Maybe Int
  , wallWallpostToId_CopyOwnerId :: Maybe Int
  , wallWallpostToId_IsFavorite :: Maybe Bool
  , wallWallpostToId_ToId :: Maybe Int
  , wallWallpostToId_CopyPostId :: Maybe Int
  , wallWallpostToId_Likes :: Maybe BaseLikesInfo
  , wallWallpostToId_Id :: Maybe Int
  , wallWallpostToId_PostType :: Maybe WallPostType
  , wallWallpostToId_Date :: Maybe Int
  , wallWallpostToId_Reposts :: Maybe BaseRepostsInfo
  , wallWallpostToId_SignerId :: Maybe Int
  , wallWallpostToId_Comments :: Maybe BaseCommentsInfo
  , wallWallpostToId_Geo :: Maybe WallGeo
  , wallWallpostToId_Text :: Maybe Text
  , wallWallpostToId_PostSource :: Maybe WallPostSource
  , wallWallpostToId_Attachments :: Maybe [WallWallpostAttachment]
  , wallWallpostToId_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallWallpostToId where
  parseJSON = withObject "WallWallpostToId" \o -> WallWallpostToId
    <$> o .:? "from_id"
    <*> o .:? "copy_owner_id"
    <*> o .:? "is_favorite"
    <*> o .:? "to_id"
    <*> o .:? "copy_post_id"
    <*> o .:? "likes"
    <*> o .:? "id"
    <*> o .:? "post_type"
    <*> o .:? "date"
    <*> o .:? "reposts"
    <*> o .:? "signer_id"
    <*> o .:? "comments"
    <*> o .:? "geo"
    <*> o .:? "text"
    <*> o .:? "post_source"
    <*> o .:? "attachments"
    <*> o .:? "post_id"
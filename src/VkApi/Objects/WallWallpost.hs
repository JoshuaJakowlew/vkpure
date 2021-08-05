module VkApi.Objects.WallWallpost where

import VkApi.Objects.Utils

import VkApi.Objects.WallViews
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallPostCopyright
import VkApi.Objects.WallPostType
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.WallGeo
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallWallpostAttachment

data WallWallpost = WallWallpost
  { wallWallpost_FromId :: Maybe Int
  , wallWallpost_IsFavorite :: Maybe Bool
  , wallWallpost_ParentsStack :: Maybe [Int]
  , wallWallpost_Views :: Maybe WallViews
  , wallWallpost_Likes :: Maybe BaseLikesInfo
  , wallWallpost_Edited :: Maybe Int
  , wallWallpost_Copyright :: Maybe WallPostCopyright
  , wallWallpost_Id :: Maybe Int
  , wallWallpost_PostType :: Maybe WallPostType
  , wallWallpost_Poster :: Maybe Value
  , wallWallpost_AccessKey :: Maybe Text
  , wallWallpost_Date :: Maybe Int
  , wallWallpost_Reposts :: Maybe BaseRepostsInfo
  , wallWallpost_SignerId :: Maybe Int
  , wallWallpost_IsArchived :: Maybe Bool
  , wallWallpost_OwnerId :: Maybe Int
  , wallWallpost_Geo :: Maybe WallGeo
  , wallWallpost_Text :: Maybe Text
  , wallWallpost_PostSource :: Maybe WallPostSource
  , wallWallpost_Attachments :: Maybe [WallWallpostAttachment]
  , wallWallpost_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallWallpost where
  parseJSON = withObject "WallWallpost" \o -> WallWallpost
    <$> o .:? "from_id"
    <*> o .:? "is_favorite"
    <*> o .:? "parents_stack"
    <*> o .:? "views"
    <*> o .:? "likes"
    <*> o .:? "edited"
    <*> o .:? "copyright"
    <*> o .:? "id"
    <*> o .:? "post_type"
    <*> o .:? "poster"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .:? "reposts"
    <*> o .:? "signer_id"
    <*> o .:? "is_archived"
    <*> o .:? "owner_id"
    <*> o .:? "geo"
    <*> o .:? "text"
    <*> o .:? "post_source"
    <*> o .:? "attachments"
    <*> o .:? "post_id"
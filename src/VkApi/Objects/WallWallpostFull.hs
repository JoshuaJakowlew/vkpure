module VkApi.Objects.WallWallpostFull where

import VkApi.Objects.Utils

import VkApi.Objects.WallViews
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallPostCopyright
import VkApi.Objects.WallPostType
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.WallGeo
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallWallpostAttachment
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.WallWallpostDonut
import VkApi.Objects.WallWallpost
import VkApi.Objects.BaseCommentsInfo

data WallWallpostFull = WallWallpostFull
  { wallWallpostFull_CarouselOffset :: Maybe Int
  , wallWallpostFull_FromId :: Maybe Int
  , wallWallpostFull_IsFavorite :: Maybe Bool
  , wallWallpostFull_ParentsStack :: Maybe [Int]
  , wallWallpostFull_Views :: Maybe WallViews
  , wallWallpostFull_Likes :: Maybe BaseLikesInfo
  , wallWallpostFull_Edited :: Maybe Int
  , wallWallpostFull_Copyright :: Maybe WallPostCopyright
  , wallWallpostFull_Id :: Maybe Int
  , wallWallpostFull_PostType :: Maybe WallPostType
  , wallWallpostFull_Poster :: Maybe Value
  , wallWallpostFull_AccessKey :: Maybe Text
  , wallWallpostFull_Date :: Maybe Int
  , wallWallpostFull_Reposts :: Maybe BaseRepostsInfo
  , wallWallpostFull_SignerId :: Maybe Int
  , wallWallpostFull_IsArchived :: Maybe Bool
  , wallWallpostFull_OwnerId :: Maybe Int
  , wallWallpostFull_Geo :: Maybe WallGeo
  , wallWallpostFull_Text :: Maybe Text
  , wallWallpostFull_PostSource :: Maybe WallPostSource
  , wallWallpostFull_Attachments :: Maybe [WallWallpostAttachment]
  , wallWallpostFull_PostId :: Maybe Int
  , wallWallpostFull_CanEdit :: Maybe BaseBoolInt
  , wallWallpostFull_Donut :: Maybe WallWallpostDonut
  , wallWallpostFull_CopyHistory :: Maybe [WallWallpost]
  , wallWallpostFull_ShortTextRate :: Maybe Double
  , wallWallpostFull_IsPinned :: Maybe Int
  , wallWallpostFull_CanPin :: Maybe BaseBoolInt
  , wallWallpostFull_CreatedBy :: Maybe Int
  , wallWallpostFull_TopicId :: Maybe Int
  , wallWallpostFull_Comments :: Maybe BaseCommentsInfo
  , wallWallpostFull_MarkedAsAds :: Maybe BaseBoolInt
  , wallWallpostFull_CanDelete :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON WallWallpostFull where
  parseJSON = withObject "WallWallpostFull" \o -> WallWallpostFull
    <$> o .:? "carousel_offset"
    <*> o .:? "from_id"
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
    <*> o .:? "can_edit"
    <*> o .:? "donut"
    <*> o .:? "copy_history"
    <*> o .:? "short_text_rate"
    <*> o .:? "is_pinned"
    <*> o .:? "can_pin"
    <*> o .:? "created_by"
    <*> o .:? "topic_id"
    <*> o .:? "comments"
    <*> o .:? "marked_as_ads"
    <*> o .:? "can_delete"
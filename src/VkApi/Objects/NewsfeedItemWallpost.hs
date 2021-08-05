module VkApi.Objects.NewsfeedItemWallpost where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.WallViews
import VkApi.Objects.WallWallpost
import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.NewsfeedEventActivity
import VkApi.Objects.NewsfeedItemWallpostType
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.NewsfeedItemWallpostFeedback
import VkApi.Objects.BaseCommentsInfo
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseGeo
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallWallpostAttachment

data NewsfeedItemWallpost = NewsfeedItemWallpost
  { newsfeedItemWallpost_CarouselOffset :: Maybe Int
  , newsfeedItemWallpost_SourceId :: Int
  , newsfeedItemWallpost_Date :: Int
  , newsfeedItemWallpost_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemWallpost_IsFavorite :: Maybe Bool
  , newsfeedItemWallpost_Views :: Maybe WallViews
  , newsfeedItemWallpost_CopyHistory :: Maybe [WallWallpost]
  , newsfeedItemWallpost_Likes :: Maybe BaseLikesInfo
  , newsfeedItemWallpost_ShortTextRate :: Maybe Double
  , newsfeedItemWallpost_Activity :: Maybe NewsfeedEventActivity
  , newsfeedItemWallpost_PostType :: Maybe NewsfeedItemWallpostType
  , newsfeedItemWallpost_Reposts :: Maybe BaseRepostsInfo
  , newsfeedItemWallpost_Feedback :: Maybe NewsfeedItemWallpostFeedback
  , newsfeedItemWallpost_SignerId :: Maybe Int
  , newsfeedItemWallpost_Comments :: Maybe BaseCommentsInfo
  , newsfeedItemWallpost_MarkedAsAds :: Maybe BaseBoolInt
  , newsfeedItemWallpost_Geo :: Maybe BaseGeo
  , newsfeedItemWallpost_Text :: Maybe Text
  , newsfeedItemWallpost_PostSource :: Maybe WallPostSource
  , newsfeedItemWallpost_Attachments :: Maybe [WallWallpostAttachment]
  , newsfeedItemWallpost_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemWallpost where
  parseJSON = withObject "NewsfeedItemWallpost" \o -> NewsfeedItemWallpost
    <$> o .:? "carousel_offset"
    <*> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "is_favorite"
    <*> o .:? "views"
    <*> o .:? "copy_history"
    <*> o .:? "likes"
    <*> o .:? "short_text_rate"
    <*> o .:? "activity"
    <*> o .:? "post_type"
    <*> o .:? "reposts"
    <*> o .:? "feedback"
    <*> o .:? "signer_id"
    <*> o .:? "comments"
    <*> o .:? "marked_as_ads"
    <*> o .:? "geo"
    <*> o .:? "text"
    <*> o .:? "post_source"
    <*> o .:? "attachments"
    <*> o .:? "post_id"
module VkApi.Objects.VideoVideo where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists
import VkApi.Objects.VideoVideoImage
import VkApi.Objects.BaseLikes
import VkApi.Objects.BaseRepostsInfo

data VideoVideo = VideoVideo
  { videoVideo_Converting :: Maybe BaseBoolInt
  , videoVideo_ContentRestrictedMessage :: Maybe Text
  , videoVideo_CanEdit :: Maybe BaseBoolInt
  , videoVideo_Platform :: Maybe Text
  , videoVideo_CanAttachLink :: Maybe BaseBoolInt
  , videoVideo_Height :: Maybe Int
  , videoVideo_LocalViews :: Maybe Int
  , videoVideo_CanRepost :: Maybe BaseBoolInt
  , videoVideo_Upcoming :: Maybe BasePropertyExists
  , videoVideo_IsFavorite :: Maybe Bool
  , videoVideo_CanAddToFaves :: Maybe BaseBoolInt
  , videoVideo_Live :: Maybe BasePropertyExists
  , videoVideo_Duration :: Maybe Int
  , videoVideo_Width :: Maybe Int
  , videoVideo_Balance :: Maybe Int
  , videoVideo_Views :: Maybe Int
  , videoVideo_UserId :: Maybe Int
  , videoVideo_Title :: Maybe Text
  , videoVideo_FirstFrame :: Maybe [VideoVideoImage]
  , videoVideo_Added :: Maybe BaseBoolInt
  , videoVideo_Likes :: Maybe BaseLikes
  , videoVideo_TrackCode :: Maybe Text
  , videoVideo_Id :: Maybe Int
  , videoVideo_Spectators :: Maybe Int
  , videoVideo_CanAdd :: Maybe BaseBoolInt
  , videoVideo_Repeat :: Maybe BasePropertyExists
  , videoVideo_Image :: Maybe [VideoVideoImage]
  , videoVideo_AccessKey :: Maybe Text
  , videoVideo_Date :: Maybe Int
  , videoVideo_Reposts :: Maybe BaseRepostsInfo
  , videoVideo_IsSubscribed :: Maybe BaseBoolInt
  , videoVideo_Description :: Maybe Text
  , videoVideo_Processing :: Maybe BasePropertyExists
  , videoVideo_OwnerId :: Maybe Int
  , videoVideo_CanSubscribe :: Maybe BaseBoolInt
  , videoVideo_LiveStartTime :: Maybe Int
  , videoVideo_ContentRestricted :: Maybe Int
  , videoVideo_Player :: Maybe Text
  , videoVideo_CanLike :: Maybe BaseBoolInt
  , videoVideo_Type :: Maybe Text
  , videoVideo_Comments :: Maybe Int
  , videoVideo_IsPrivate :: Maybe BaseBoolInt
  , videoVideo_CanComment :: Maybe BaseBoolInt
  , videoVideo_LiveStatus :: Maybe Text
  , videoVideo_LiveNotify :: Maybe BaseBoolInt
  , videoVideo_AddingDate :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON VideoVideo where
  parseJSON = withObject "VideoVideo" \o -> VideoVideo
    <$> o .:? "converting"
    <*> o .:? "content_restricted_message"
    <*> o .:? "can_edit"
    <*> o .:? "platform"
    <*> o .:? "can_attach_link"
    <*> o .:? "height"
    <*> o .:? "local_views"
    <*> o .:? "can_repost"
    <*> o .:? "upcoming"
    <*> o .:? "is_favorite"
    <*> o .:? "can_add_to_faves"
    <*> o .:? "live"
    <*> o .:? "duration"
    <*> o .:? "width"
    <*> o .:? "balance"
    <*> o .:? "views"
    <*> o .:? "user_id"
    <*> o .:? "title"
    <*> o .:? "first_frame"
    <*> o .:? "added"
    <*> o .:? "likes"
    <*> o .:? "track_code"
    <*> o .:? "id"
    <*> o .:? "spectators"
    <*> o .:? "can_add"
    <*> o .:? "repeat"
    <*> o .:? "image"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .:? "reposts"
    <*> o .:? "is_subscribed"
    <*> o .:? "description"
    <*> o .:? "processing"
    <*> o .:? "owner_id"
    <*> o .:? "can_subscribe"
    <*> o .:? "live_start_time"
    <*> o .:? "content_restricted"
    <*> o .:? "player"
    <*> o .:? "can_like"
    <*> o .:? "type"
    <*> o .:? "comments"
    <*> o .:? "is_private"
    <*> o .:? "can_comment"
    <*> o .:? "live_status"
    <*> o .:? "live_notify"
    <*> o .:? "adding_date"
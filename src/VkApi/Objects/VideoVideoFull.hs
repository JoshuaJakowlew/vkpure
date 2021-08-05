module VkApi.Objects.VideoVideoFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists
import VkApi.Objects.VideoVideoImage
import VkApi.Objects.BaseLikes
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.VideoLiveSettings
import VkApi.Objects.VideoVideoFiles

data VideoVideoFull = VideoVideoFull
  { videoVideoFull_Converting :: Maybe BaseBoolInt
  , videoVideoFull_ContentRestrictedMessage :: Maybe Text
  , videoVideoFull_CanEdit :: Maybe BaseBoolInt
  , videoVideoFull_Platform :: Maybe Text
  , videoVideoFull_CanAttachLink :: Maybe BaseBoolInt
  , videoVideoFull_Height :: Maybe Int
  , videoVideoFull_LocalViews :: Maybe Int
  , videoVideoFull_CanRepost :: Maybe BaseBoolInt
  , videoVideoFull_Upcoming :: Maybe BasePropertyExists
  , videoVideoFull_IsFavorite :: Maybe Bool
  , videoVideoFull_CanAddToFaves :: Maybe BaseBoolInt
  , videoVideoFull_Live :: Maybe BasePropertyExists
  , videoVideoFull_Duration :: Maybe Int
  , videoVideoFull_Width :: Maybe Int
  , videoVideoFull_Balance :: Maybe Int
  , videoVideoFull_Views :: Maybe Int
  , videoVideoFull_UserId :: Maybe Int
  , videoVideoFull_Title :: Maybe Text
  , videoVideoFull_FirstFrame :: Maybe [VideoVideoImage]
  , videoVideoFull_Added :: Maybe BaseBoolInt
  , videoVideoFull_Likes :: Maybe BaseLikes
  , videoVideoFull_TrackCode :: Maybe Text
  , videoVideoFull_Id :: Maybe Int
  , videoVideoFull_Spectators :: Maybe Int
  , videoVideoFull_CanAdd :: Maybe BaseBoolInt
  , videoVideoFull_Repeat :: Maybe BasePropertyExists
  , videoVideoFull_Image :: Maybe [VideoVideoImage]
  , videoVideoFull_AccessKey :: Maybe Text
  , videoVideoFull_Date :: Maybe Int
  , videoVideoFull_Reposts :: Maybe BaseRepostsInfo
  , videoVideoFull_IsSubscribed :: Maybe BaseBoolInt
  , videoVideoFull_Description :: Maybe Text
  , videoVideoFull_Processing :: Maybe BasePropertyExists
  , videoVideoFull_OwnerId :: Maybe Int
  , videoVideoFull_CanSubscribe :: Maybe BaseBoolInt
  , videoVideoFull_LiveStartTime :: Maybe Int
  , videoVideoFull_ContentRestricted :: Maybe Int
  , videoVideoFull_Player :: Maybe Text
  , videoVideoFull_CanLike :: Maybe BaseBoolInt
  , videoVideoFull_Type :: Maybe Text
  , videoVideoFull_Comments :: Maybe Int
  , videoVideoFull_IsPrivate :: Maybe BaseBoolInt
  , videoVideoFull_CanComment :: Maybe BaseBoolInt
  , videoVideoFull_LiveStatus :: Maybe Text
  , videoVideoFull_LiveNotify :: Maybe BaseBoolInt
  , videoVideoFull_AddingDate :: Maybe Int
  , videoVideoFull_LiveSettings :: Maybe VideoLiveSettings
  , videoVideoFull_Files :: Maybe VideoVideoFiles
  } deriving (Show, Generic)

instance FromJSON VideoVideoFull where
  parseJSON = withObject "VideoVideoFull" \o -> VideoVideoFull
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
    <*> o .:? "live_settings"
    <*> o .:? "files"
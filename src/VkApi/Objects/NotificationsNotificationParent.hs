module VkApi.Objects.NotificationsNotificationParent where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLikesInfo
import VkApi.Objects.WallPostType
import VkApi.Objects.BaseRepostsInfo
import VkApi.Objects.BaseCommentsInfo
import VkApi.Objects.WallGeo
import VkApi.Objects.WallPostSource
import VkApi.Objects.WallWallpostAttachment
import VkApi.Objects.PhotosImage
import VkApi.Objects.PhotosPhotoSizes
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists
import VkApi.Objects.VideoVideoImage
import VkApi.Objects.BaseLikes
import VkApi.Objects.WallWallpost
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.BoardTopic
import VkApi.Objects.VideoVideo

data NotificationsNotificationParent = NotificationsNotificationParent
  { notificationsNotificationParent_FromId :: Maybe Int
  , notificationsNotificationParent_CopyOwnerId :: Maybe Int
  , notificationsNotificationParent_IsFavorite :: Maybe Bool
  , notificationsNotificationParent_ToId :: Maybe Int
  , notificationsNotificationParent_CopyPostId :: Maybe Int
  , notificationsNotificationParent_Likes :: Maybe BaseLikesInfo
  , notificationsNotificationParent_Id :: Int
  , notificationsNotificationParent_PostType :: Maybe WallPostType
  , notificationsNotificationParent_Date :: Int
  , notificationsNotificationParent_Reposts :: Maybe BaseRepostsInfo
  , notificationsNotificationParent_SignerId :: Maybe Int
  , notificationsNotificationParent_Comments :: Maybe BaseCommentsInfo
  , notificationsNotificationParent_Geo :: Maybe WallGeo
  , notificationsNotificationParent_Text :: Maybe Text
  , notificationsNotificationParent_PostSource :: Maybe WallPostSource
  , notificationsNotificationParent_Attachments :: Maybe [WallWallpostAttachment]
  , notificationsNotificationParent_PostId :: Maybe Int
  , notificationsNotificationParent_Height :: Maybe Int
  , notificationsNotificationParent_Images :: Maybe [PhotosImage]
  , notificationsNotificationParent_Width :: Maybe Int
  , notificationsNotificationParent_Place :: Maybe Text
  , notificationsNotificationParent_UserId :: Maybe Int
  , notificationsNotificationParent_Id :: Int
  , notificationsNotificationParent_Photo256 :: Maybe Text
  , notificationsNotificationParent_Long :: Maybe Double
  , notificationsNotificationParent_AccessKey :: Maybe Text
  , notificationsNotificationParent_Date :: Int
  , notificationsNotificationParent_HasTags :: Bool
  , notificationsNotificationParent_Lat :: Maybe Double
  , notificationsNotificationParent_Sizes :: Maybe [PhotosPhotoSizes]
  , notificationsNotificationParent_OwnerId :: Int
  , notificationsNotificationParent_CanComment :: Maybe BaseBoolInt
  , notificationsNotificationParent_AlbumId :: Int
  , notificationsNotificationParent_Text :: Maybe Text
  , notificationsNotificationParent_PostId :: Maybe Int
  , notificationsNotificationParent_Title :: Maybe Text
  , notificationsNotificationParent_Id :: Int
  , notificationsNotificationParent_IsClosed :: Maybe BaseBoolInt
  , notificationsNotificationParent_CreatedBy :: Maybe Int
  , notificationsNotificationParent_UpdatedBy :: Maybe Int
  , notificationsNotificationParent_IsFixed :: Maybe BaseBoolInt
  , notificationsNotificationParent_Created :: Maybe Int
  , notificationsNotificationParent_Comments :: Maybe Int
  , notificationsNotificationParent_Updated :: Maybe Int
  , notificationsNotificationParent_Converting :: Maybe BaseBoolInt
  , notificationsNotificationParent_ContentRestrictedMessage :: Maybe Text
  , notificationsNotificationParent_CanEdit :: Maybe BaseBoolInt
  , notificationsNotificationParent_Platform :: Maybe Text
  , notificationsNotificationParent_CanAttachLink :: Maybe BaseBoolInt
  , notificationsNotificationParent_Height :: Maybe Int
  , notificationsNotificationParent_LocalViews :: Maybe Int
  , notificationsNotificationParent_CanRepost :: Maybe BaseBoolInt
  , notificationsNotificationParent_Upcoming :: Maybe BasePropertyExists
  , notificationsNotificationParent_IsFavorite :: Maybe Bool
  , notificationsNotificationParent_CanAddToFaves :: Maybe BaseBoolInt
  , notificationsNotificationParent_Live :: Maybe BasePropertyExists
  , notificationsNotificationParent_Duration :: Maybe Int
  , notificationsNotificationParent_Width :: Maybe Int
  , notificationsNotificationParent_Balance :: Maybe Int
  , notificationsNotificationParent_Views :: Maybe Int
  , notificationsNotificationParent_UserId :: Maybe Int
  , notificationsNotificationParent_Title :: Maybe Text
  , notificationsNotificationParent_FirstFrame :: Maybe [VideoVideoImage]
  , notificationsNotificationParent_Added :: Maybe BaseBoolInt
  , notificationsNotificationParent_Likes :: Maybe BaseLikes
  , notificationsNotificationParent_TrackCode :: Maybe Text
  , notificationsNotificationParent_Id :: Int
  , notificationsNotificationParent_Spectators :: Maybe Int
  , notificationsNotificationParent_CanAdd :: Maybe BaseBoolInt
  , notificationsNotificationParent_Repeat :: Maybe BasePropertyExists
  , notificationsNotificationParent_Image :: Maybe [VideoVideoImage]
  , notificationsNotificationParent_AccessKey :: Maybe Text
  , notificationsNotificationParent_Date :: Int
  , notificationsNotificationParent_Reposts :: Maybe BaseRepostsInfo
  , notificationsNotificationParent_IsSubscribed :: Maybe BaseBoolInt
  , notificationsNotificationParent_Description :: Maybe Text
  , notificationsNotificationParent_Processing :: Maybe BasePropertyExists
  , notificationsNotificationParent_OwnerId :: Int
  , notificationsNotificationParent_CanSubscribe :: Maybe BaseBoolInt
  , notificationsNotificationParent_LiveStartTime :: Maybe Int
  , notificationsNotificationParent_ContentRestricted :: Maybe Int
  , notificationsNotificationParent_Player :: Maybe Text
  , notificationsNotificationParent_CanLike :: Maybe BaseBoolInt
  , notificationsNotificationParent_Type :: Maybe Text
  , notificationsNotificationParent_Comments :: Maybe Int
  , notificationsNotificationParent_IsPrivate :: Maybe BaseBoolInt
  , notificationsNotificationParent_CanComment :: Maybe BaseBoolInt
  , notificationsNotificationParent_LiveStatus :: Maybe Text
  , notificationsNotificationParent_LiveNotify :: Maybe BaseBoolInt
  , notificationsNotificationParent_AddingDate :: Maybe Int
  , notificationsNotificationParent_Post :: Maybe WallWallpost
  , notificationsNotificationParent_Id :: Int
  , notificationsNotificationParent_Date :: Int
  , notificationsNotificationParent_Photo :: Maybe PhotosPhoto
  , notificationsNotificationParent_Topic :: Maybe BoardTopic
  , notificationsNotificationParent_Video :: Maybe VideoVideo
  , notificationsNotificationParent_OwnerId :: Int
  , notificationsNotificationParent_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NotificationsNotificationParent where
  parseJSON = withObject "NotificationsNotificationParent" \o -> NotificationsNotificationParent
    <$> o .:? "from_id"
    <*> o .:? "copy_owner_id"
    <*> o .:? "is_favorite"
    <*> o .:? "to_id"
    <*> o .:? "copy_post_id"
    <*> o .:? "likes"
    <*> o .: "id"
    <*> o .:? "post_type"
    <*> o .: "date"
    <*> o .:? "reposts"
    <*> o .:? "signer_id"
    <*> o .:? "comments"
    <*> o .:? "geo"
    <*> o .:? "text"
    <*> o .:? "post_source"
    <*> o .:? "attachments"
    <*> o .:? "post_id"
    <*> o .:? "height"
    <*> o .:? "images"
    <*> o .:? "width"
    <*> o .:? "place"
    <*> o .:? "user_id"
    <*> o .: "id"
    <*> o .:? "photo_256"
    <*> o .:? "long"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .: "has_tags"
    <*> o .:? "lat"
    <*> o .:? "sizes"
    <*> o .: "owner_id"
    <*> o .:? "can_comment"
    <*> o .: "album_id"
    <*> o .:? "text"
    <*> o .:? "post_id"
    <*> o .:? "title"
    <*> o .: "id"
    <*> o .:? "is_closed"
    <*> o .:? "created_by"
    <*> o .:? "updated_by"
    <*> o .:? "is_fixed"
    <*> o .:? "created"
    <*> o .:? "comments"
    <*> o .:? "updated"
    <*> o .:? "converting"
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
    <*> o .: "id"
    <*> o .:? "spectators"
    <*> o .:? "can_add"
    <*> o .:? "repeat"
    <*> o .:? "image"
    <*> o .:? "access_key"
    <*> o .: "date"
    <*> o .:? "reposts"
    <*> o .:? "is_subscribed"
    <*> o .:? "description"
    <*> o .:? "processing"
    <*> o .: "owner_id"
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
    <*> o .:? "post"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "photo"
    <*> o .:? "topic"
    <*> o .:? "video"
    <*> o .: "owner_id"
    <*> o .:? "text"
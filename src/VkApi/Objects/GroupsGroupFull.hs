module VkApi.Objects.GroupsGroupFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.GroupsGroupIsClosed
import VkApi.Objects.GroupsGroupAdminLevel
import VkApi.Objects.GroupsGroupType
import VkApi.Objects.GroupsLiveCovers
import VkApi.Objects.GroupsCountersGroup
import VkApi.Objects.GroupsLinksItem
import VkApi.Objects.BaseCropPhoto
import VkApi.Objects.GroupsGroupFullMainSection
import VkApi.Objects.GroupsCover
import VkApi.Objects.BaseObject
import VkApi.Objects.GroupsMarketInfo
import VkApi.Objects.GroupsGroupBanInfo
import VkApi.Objects.GroupsOnlineStatus
import VkApi.Objects.GroupsGroupFullMemberStatus
import VkApi.Objects.GroupsContactsItem
import VkApi.Objects.BaseCountry
import VkApi.Objects.GroupsAddressesInfo
import VkApi.Objects.AudioAudio
import VkApi.Objects.GroupsGroupFullAgeLimits

data GroupsGroupFull = GroupsGroupFull
  { groupsGroupFull_Deactivated :: Maybe Text
  , groupsGroupFull_Photo200 :: Maybe Text
  , groupsGroupFull_StartDate :: Maybe Int
  , groupsGroupFull_IsAdvertiser :: Maybe BaseBoolInt
  , groupsGroupFull_FinishDate :: Maybe Int
  , groupsGroupFull_Id :: Int
  , groupsGroupFull_Name :: Text
  , groupsGroupFull_IsClosed :: GroupsGroupIsClosed
  , groupsGroupFull_ScreenName :: Text
  , groupsGroupFull_Photo50 :: Maybe Text
  , groupsGroupFull_AdminLevel :: Maybe GroupsGroupAdminLevel
  , groupsGroupFull_Type :: Maybe GroupsGroupType
  , groupsGroupFull_IsMember :: Maybe BaseBoolInt
  , groupsGroupFull_Photo100 :: Maybe Text
  , groupsGroupFull_IsAdmin :: Maybe BaseBoolInt
  , groupsGroupFull_LiveCovers :: Maybe GroupsLiveCovers
  , groupsGroupFull_CanSuggest :: Maybe BaseBoolInt
  , groupsGroupFull_Counters :: Maybe GroupsCountersGroup
  , groupsGroupFull_CanSubscribePosts :: Maybe Bool
  , groupsGroupFull_SecondarySection :: Maybe Int
  , groupsGroupFull_StoriesArchiveCount :: Maybe Int
  , groupsGroupFull_Status :: Maybe Text
  , groupsGroupFull_VideoLiveCount :: Maybe Int
  , groupsGroupFull_CanUploadStory :: Maybe BaseBoolInt
  , groupsGroupFull_UsingVkpayMarketApp :: Maybe Bool
  , groupsGroupFull_HasPhoto :: Maybe BaseBoolInt
  , groupsGroupFull_InvitedBy :: Maybe Int
  , groupsGroupFull_IsFavorite :: Maybe BaseBoolInt
  , groupsGroupFull_Trending :: Maybe BaseBoolInt
  , groupsGroupFull_ClipsCount :: Maybe Int
  , groupsGroupFull_VideoLiveLevel :: Maybe Int
  , groupsGroupFull_HasGroupChannel :: Maybe Bool
  , groupsGroupFull_CanPost :: Maybe BaseBoolInt
  , groupsGroupFull_IsHiddenFromFeed :: Maybe BaseBoolInt
  , groupsGroupFull_Links :: Maybe [GroupsLinksItem]
  , groupsGroupFull_WikiPage :: Maybe Text
  , groupsGroupFull_CropPhoto :: Maybe BaseCropPhoto
  , groupsGroupFull_MainSection :: Maybe GroupsGroupFullMainSection
  , groupsGroupFull_Cover :: Maybe GroupsCover
  , groupsGroupFull_Activity :: Maybe Text
  , groupsGroupFull_HasMarketApp :: Maybe Bool
  , groupsGroupFull_CanUploadDoc :: Maybe BaseBoolInt
  , groupsGroupFull_City :: Maybe BaseObject
  , groupsGroupFull_MembersCount :: Maybe Int
  , groupsGroupFull_Market :: Maybe GroupsMarketInfo
  , groupsGroupFull_BanInfo :: Maybe GroupsGroupBanInfo
  , groupsGroupFull_OnlineStatus :: Maybe GroupsOnlineStatus
  , groupsGroupFull_IsSubscribed :: Maybe BaseBoolInt
  , groupsGroupFull_MainAlbumId :: Maybe Int
  , groupsGroupFull_CanCreateTopic :: Maybe BaseBoolInt
  , groupsGroupFull_HasUnseenStories :: Maybe Bool
  , groupsGroupFull_FixedPost :: Maybe Int
  , groupsGroupFull_CanSubscribePodcasts :: Maybe Bool
  , groupsGroupFull_Wall :: Maybe Int
  , groupsGroupFull_RequestsCount :: Maybe Int
  , groupsGroupFull_Verified :: Maybe BaseBoolInt
  , groupsGroupFull_CanUploadVideo :: Maybe BaseBoolInt
  , groupsGroupFull_Description :: Maybe Text
  , groupsGroupFull_MemberStatus :: Maybe GroupsGroupFullMemberStatus
  , groupsGroupFull_Site :: Maybe Text
  , groupsGroupFull_Contacts :: Maybe [GroupsContactsItem]
  , groupsGroupFull_IsSubscribedPodcasts :: Maybe Bool
  , groupsGroupFull_CanSendNotify :: Maybe BaseBoolInt
  , groupsGroupFull_Country :: Maybe BaseCountry
  , groupsGroupFull_CanMessage :: Maybe BaseBoolInt
  , groupsGroupFull_Addresses :: Maybe GroupsAddressesInfo
  , groupsGroupFull_IsAdult :: Maybe BaseBoolInt
  , groupsGroupFull_StatusAudio :: Maybe AudioAudio
  , groupsGroupFull_AgeLimits :: Maybe GroupsGroupFullAgeLimits
  , groupsGroupFull_IsMessagesBlocked :: Maybe BaseBoolInt
  , groupsGroupFull_CanSeeAllPosts :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsGroupFull where
  parseJSON = withObject "GroupsGroupFull" \o -> GroupsGroupFull
    <$> o .:? "deactivated"
    <*> o .:? "photo_200"
    <*> o .:? "start_date"
    <*> o .:? "is_advertiser"
    <*> o .:? "finish_date"
    <*> o .: "id"
    <*> o .: "name"
    <*> o .: "is_closed"
    <*> o .: "screen_name"
    <*> o .:? "photo_50"
    <*> o .:? "admin_level"
    <*> o .:? "type"
    <*> o .:? "is_member"
    <*> o .:? "photo_100"
    <*> o .:? "is_admin"
    <*> o .:? "live_covers"
    <*> o .:? "can_suggest"
    <*> o .:? "counters"
    <*> o .:? "can_subscribe_posts"
    <*> o .:? "secondary_section"
    <*> o .:? "stories_archive_count"
    <*> o .:? "status"
    <*> o .:? "video_live_count"
    <*> o .:? "can_upload_story"
    <*> o .:? "using_vkpay_market_app"
    <*> o .:? "has_photo"
    <*> o .:? "invited_by"
    <*> o .:? "is_favorite"
    <*> o .:? "trending"
    <*> o .:? "clips_count"
    <*> o .:? "video_live_level"
    <*> o .:? "has_group_channel"
    <*> o .:? "can_post"
    <*> o .:? "is_hidden_from_feed"
    <*> o .:? "links"
    <*> o .:? "wiki_page"
    <*> o .:? "crop_photo"
    <*> o .:? "main_section"
    <*> o .:? "cover"
    <*> o .:? "activity"
    <*> o .:? "has_market_app"
    <*> o .:? "can_upload_doc"
    <*> o .:? "city"
    <*> o .:? "members_count"
    <*> o .:? "market"
    <*> o .:? "ban_info"
    <*> o .:? "online_status"
    <*> o .:? "is_subscribed"
    <*> o .:? "main_album_id"
    <*> o .:? "can_create_topic"
    <*> o .:? "has_unseen_stories"
    <*> o .:? "fixed_post"
    <*> o .:? "can_subscribe_podcasts"
    <*> o .:? "wall"
    <*> o .:? "requests_count"
    <*> o .:? "verified"
    <*> o .:? "can_upload_video"
    <*> o .:? "description"
    <*> o .:? "member_status"
    <*> o .:? "site"
    <*> o .:? "contacts"
    <*> o .:? "is_subscribed_podcasts"
    <*> o .:? "can_send_notify"
    <*> o .:? "country"
    <*> o .:? "can_message"
    <*> o .:? "addresses"
    <*> o .:? "is_adult"
    <*> o .:? "status_audio"
    <*> o .:? "age_limits"
    <*> o .:? "is_messages_blocked"
    <*> o .:? "can_see_all_posts"
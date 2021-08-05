module VkApi.Objects.GroupsUserXtrRole where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.FriendsFriendStatusStatus
import VkApi.Objects.FriendsRequestsMutual
import VkApi.Objects.UsersOnlineInfo
import VkApi.Objects.BaseSex
import VkApi.Objects.UsersUserMin
import VkApi.Objects.UsersMilitary
import VkApi.Objects.UsersUserCounters
import VkApi.Objects.UsersExports
import VkApi.Objects.VideoLiveInfo
import VkApi.Objects.BaseCropPhoto
import VkApi.Objects.PhotosPhotoFalseable
import VkApi.Objects.UsersUniversity
import VkApi.Objects.UsersRelative
import VkApi.Objects.UsersSchool
import VkApi.Objects.BaseCity
import VkApi.Objects.UsersOccupation
import VkApi.Objects.OwnerState
import VkApi.Objects.UsersUserRelation
import VkApi.Objects.BaseCountry
import VkApi.Objects.UsersPersonal
import VkApi.Objects.UsersUserType
import VkApi.Objects.UsersLastSeen
import VkApi.Objects.AudioAudio
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.UsersCareer
import VkApi.Objects.GroupsRoleOptions

data GroupsUserXtrRole = GroupsUserXtrRole
  { groupsUserXtrRole_Deactivated :: Maybe Text
  , groupsUserXtrRole_Id :: Int
  , groupsUserXtrRole_LastName :: Text
  , groupsUserXtrRole_FirstName :: Text
  , groupsUserXtrRole_IsClosed :: Maybe Bool
  , groupsUserXtrRole_CanAccessClosed :: Maybe Bool
  , groupsUserXtrRole_Hidden :: Maybe Int
  , groupsUserXtrRole_Online :: Maybe BaseBoolInt
  , groupsUserXtrRole_FriendStatus :: Maybe FriendsFriendStatusStatus
  , groupsUserXtrRole_OnlineApp :: Maybe Int
  , groupsUserXtrRole_Trending :: Maybe BaseBoolInt
  , groupsUserXtrRole_OnlineMobile :: Maybe BaseBoolInt
  , groupsUserXtrRole_Mutual :: Maybe FriendsRequestsMutual
  , groupsUserXtrRole_ScreenName :: Maybe Text
  , groupsUserXtrRole_Verified :: Maybe BaseBoolInt
  , groupsUserXtrRole_OnlineInfo :: Maybe UsersOnlineInfo
  , groupsUserXtrRole_Photo50 :: Maybe Text
  , groupsUserXtrRole_Sex :: Maybe BaseSex
  , groupsUserXtrRole_Photo100 :: Maybe Text
  , groupsUserXtrRole_Photo400 :: Maybe Text
  , groupsUserXtrRole_RelationPartner :: Maybe UsersUserMin
  , groupsUserXtrRole_Military :: Maybe [UsersMilitary]
  , groupsUserXtrRole_PhotoBig :: Maybe Text
  , groupsUserXtrRole_Counters :: Maybe UsersUserCounters
  , groupsUserXtrRole_Exports :: Maybe UsersExports
  , groupsUserXtrRole_CanSubscribePosts :: Maybe Bool
  , groupsUserXtrRole_StoriesArchiveCount :: Maybe Int
  , groupsUserXtrRole_Status :: Maybe Text
  , groupsUserXtrRole_VideoLiveCount :: Maybe Int
  , groupsUserXtrRole_UniversityName :: Maybe Text
  , groupsUserXtrRole_CanSeeWishes :: Maybe Bool
  , groupsUserXtrRole_HomePhone :: Maybe Text
  , groupsUserXtrRole_HasPhoto :: Maybe BaseBoolInt
  , groupsUserXtrRole_Photo200 :: Maybe Text
  , groupsUserXtrRole_CanSeeAudio :: Maybe BaseBoolInt
  , groupsUserXtrRole_WallComments :: Maybe BaseBoolInt
  , groupsUserXtrRole_IsFavorite :: Maybe BaseBoolInt
  , groupsUserXtrRole_Quotes :: Maybe Text
  , groupsUserXtrRole_FollowersCount :: Maybe Int
  , groupsUserXtrRole_CanCall :: Maybe Bool
  , groupsUserXtrRole_ClipsCount :: Maybe Int
  , groupsUserXtrRole_VideoLiveLevel :: Maybe Int
  , groupsUserXtrRole_PhotoId :: Maybe Text
  , groupsUserXtrRole_UniversityGroupId :: Maybe Int
  , groupsUserXtrRole_CanBeInvitedGroup :: Maybe Bool
  , groupsUserXtrRole_CanPost :: Maybe BaseBoolInt
  , groupsUserXtrRole_IsVideoLiveNotificationsBlocked :: Maybe BaseBoolInt
  , groupsUserXtrRole_Movies :: Maybe Text
  , groupsUserXtrRole_Activities :: Maybe Text
  , groupsUserXtrRole_IsHiddenFromFeed :: Maybe BaseBoolInt
  , groupsUserXtrRole_Photo400Orig :: Maybe Text
  , groupsUserXtrRole_ContactName :: Maybe Text
  , groupsUserXtrRole_Instagram :: Maybe Text
  , groupsUserXtrRole_FacebookName :: Maybe Text
  , groupsUserXtrRole_CanCallFromGroup :: Maybe Bool
  , groupsUserXtrRole_FacultyName :: Maybe Text
  , groupsUserXtrRole_Domain :: Maybe Text
  , groupsUserXtrRole_VideoLive :: Maybe VideoLiveInfo
  , groupsUserXtrRole_CanSeeGifts :: Maybe BaseBoolInt
  , groupsUserXtrRole_CropPhoto :: Maybe BaseCropPhoto
  , groupsUserXtrRole_HasMobile :: Maybe BaseBoolInt
  , groupsUserXtrRole_Games :: Maybe Text
  , groupsUserXtrRole_Twitter :: Maybe Text
  , groupsUserXtrRole_Activity :: Maybe Text
  , groupsUserXtrRole_PhotoMediumRec :: Maybe PhotosPhotoFalseable
  , groupsUserXtrRole_IsNoIndex :: Maybe Bool
  , groupsUserXtrRole_Hash :: Maybe Text
  , groupsUserXtrRole_Universities :: Maybe [UsersUniversity]
  , groupsUserXtrRole_MaidenName :: Maybe Text
  , groupsUserXtrRole_Relatives :: Maybe [UsersRelative]
  , groupsUserXtrRole_CanUploadDoc :: Maybe BaseBoolInt
  , groupsUserXtrRole_PhotoRec :: Maybe PhotosPhotoFalseable
  , groupsUserXtrRole_BlacklistedByMe :: Maybe BaseBoolInt
  , groupsUserXtrRole_Schools :: Maybe [UsersSchool]
  , groupsUserXtrRole_PhotoMax :: Maybe Text
  , groupsUserXtrRole_City :: Maybe BaseCity
  , groupsUserXtrRole_Occupation :: Maybe UsersOccupation
  , groupsUserXtrRole_IsFriend :: Maybe BaseBoolInt
  , groupsUserXtrRole_Livejournal :: Maybe Text
  , groupsUserXtrRole_AccessKey :: Maybe Text
  , groupsUserXtrRole_Skype :: Maybe Text
  , groupsUserXtrRole_University :: Maybe Int
  , groupsUserXtrRole_LastNameAcc :: Maybe Text
  , groupsUserXtrRole_CanSendFriendRequest :: Maybe BaseBoolInt
  , groupsUserXtrRole_Photo :: Maybe Text
  , groupsUserXtrRole_Blacklisted :: Maybe BaseBoolInt
  , groupsUserXtrRole_LastNameDat :: Maybe Text
  , groupsUserXtrRole_ServiceDescription :: Maybe Text
  , groupsUserXtrRole_Email :: Maybe Text
  , groupsUserXtrRole_FirstNameDat :: Maybe Text
  , groupsUserXtrRole_FirstNameAcc :: Maybe Text
  , groupsUserXtrRole_FirstNameNom :: Maybe Text
  , groupsUserXtrRole_OwnerState :: Maybe OwnerState
  , groupsUserXtrRole_HasUnseenStories :: Maybe Bool
  , groupsUserXtrRole_FirstNameGen :: Maybe Text
  , groupsUserXtrRole_LastNameNom :: Maybe Text
  , groupsUserXtrRole_LastNameGen :: Maybe Text
  , groupsUserXtrRole_CommonCount :: Maybe Int
  , groupsUserXtrRole_Music :: Maybe Text
  , groupsUserXtrRole_LastNameIns :: Maybe Text
  , groupsUserXtrRole_EducationStatus :: Maybe Text
  , groupsUserXtrRole_FirstNameIns :: Maybe Text
  , groupsUserXtrRole_CanSubscribePodcasts :: Maybe Bool
  , groupsUserXtrRole_Bdate :: Maybe Text
  , groupsUserXtrRole_Test :: Maybe BaseBoolInt
  , groupsUserXtrRole_PhotoMedium :: Maybe PhotosPhotoFalseable
  , groupsUserXtrRole_Relation :: Maybe UsersUserRelation
  , groupsUserXtrRole_PhotoMaxOrig :: Maybe Text
  , groupsUserXtrRole_Site :: Maybe Text
  , groupsUserXtrRole_EducationForm :: Maybe Text
  , groupsUserXtrRole_MobilePhone :: Maybe Text
  , groupsUserXtrRole_Timezone :: Maybe Double
  , groupsUserXtrRole_IsSubscribedPodcasts :: Maybe Bool
  , groupsUserXtrRole_Facebook :: Maybe Text
  , groupsUserXtrRole_Country :: Maybe BaseCountry
  , groupsUserXtrRole_Personal :: Maybe UsersPersonal
  , groupsUserXtrRole_Type :: Maybe UsersUserType
  , groupsUserXtrRole_IsService :: Maybe Bool
  , groupsUserXtrRole_CanWritePrivateMessage :: Maybe BaseBoolInt
  , groupsUserXtrRole_Nickname :: Maybe Text
  , groupsUserXtrRole_Graduation :: Maybe Int
  , groupsUserXtrRole_Faculty :: Maybe Int
  , groupsUserXtrRole_LastSeen :: Maybe UsersLastSeen
  , groupsUserXtrRole_About :: Maybe Text
  , groupsUserXtrRole_Interests :: Maybe Text
  , groupsUserXtrRole_StatusAudio :: Maybe AudioAudio
  , groupsUserXtrRole_Photo200Orig :: Maybe Text
  , groupsUserXtrRole_PhotoMaxSize :: Maybe PhotosPhoto
  , groupsUserXtrRole_LastNameAbl :: Maybe Text
  , groupsUserXtrRole_HomeTown :: Maybe Text
  , groupsUserXtrRole_Language :: Maybe Text
  , groupsUserXtrRole_WallDefault :: Maybe Text
  , groupsUserXtrRole_Career :: Maybe [UsersCareer]
  , groupsUserXtrRole_Tv :: Maybe Text
  , groupsUserXtrRole_CanSeeAllPosts :: Maybe BaseBoolInt
  , groupsUserXtrRole_Books :: Maybe Text
  , groupsUserXtrRole_FirstNameAbl :: Maybe Text
  , groupsUserXtrRole_Role :: Maybe GroupsRoleOptions
  } deriving (Show, Generic)

instance FromJSON GroupsUserXtrRole where
  parseJSON = withObject "GroupsUserXtrRole" \o -> GroupsUserXtrRole
    <$> o .:? "deactivated"
    <*> o .: "id"
    <*> o .: "last_name"
    <*> o .: "first_name"
    <*> o .:? "is_closed"
    <*> o .:? "can_access_closed"
    <*> o .:? "hidden"
    <*> o .:? "online"
    <*> o .:? "friend_status"
    <*> o .:? "online_app"
    <*> o .:? "trending"
    <*> o .:? "online_mobile"
    <*> o .:? "mutual"
    <*> o .:? "screen_name"
    <*> o .:? "verified"
    <*> o .:? "online_info"
    <*> o .:? "photo_50"
    <*> o .:? "sex"
    <*> o .:? "photo_100"
    <*> o .:? "photo_400"
    <*> o .:? "relation_partner"
    <*> o .:? "military"
    <*> o .:? "photo_big"
    <*> o .:? "counters"
    <*> o .:? "exports"
    <*> o .:? "can_subscribe_posts"
    <*> o .:? "stories_archive_count"
    <*> o .:? "status"
    <*> o .:? "video_live_count"
    <*> o .:? "university_name"
    <*> o .:? "can_see_wishes"
    <*> o .:? "home_phone"
    <*> o .:? "has_photo"
    <*> o .:? "photo_200"
    <*> o .:? "can_see_audio"
    <*> o .:? "wall_comments"
    <*> o .:? "is_favorite"
    <*> o .:? "quotes"
    <*> o .:? "followers_count"
    <*> o .:? "can_call"
    <*> o .:? "clips_count"
    <*> o .:? "video_live_level"
    <*> o .:? "photo_id"
    <*> o .:? "university_group_id"
    <*> o .:? "can_be_invited_group"
    <*> o .:? "can_post"
    <*> o .:? "is_video_live_notifications_blocked"
    <*> o .:? "movies"
    <*> o .:? "activities"
    <*> o .:? "is_hidden_from_feed"
    <*> o .:? "photo_400_orig"
    <*> o .:? "contact_name"
    <*> o .:? "instagram"
    <*> o .:? "facebook_name"
    <*> o .:? "can_call_from_group"
    <*> o .:? "faculty_name"
    <*> o .:? "domain"
    <*> o .:? "video_live"
    <*> o .:? "can_see_gifts"
    <*> o .:? "crop_photo"
    <*> o .:? "has_mobile"
    <*> o .:? "games"
    <*> o .:? "twitter"
    <*> o .:? "activity"
    <*> o .:? "photo_medium_rec"
    <*> o .:? "is_no_index"
    <*> o .:? "hash"
    <*> o .:? "universities"
    <*> o .:? "maiden_name"
    <*> o .:? "relatives"
    <*> o .:? "can_upload_doc"
    <*> o .:? "photo_rec"
    <*> o .:? "blacklisted_by_me"
    <*> o .:? "schools"
    <*> o .:? "photo_max"
    <*> o .:? "city"
    <*> o .:? "occupation"
    <*> o .:? "is_friend"
    <*> o .:? "livejournal"
    <*> o .:? "access_key"
    <*> o .:? "skype"
    <*> o .:? "university"
    <*> o .:? "last_name_acc"
    <*> o .:? "can_send_friend_request"
    <*> o .:? "photo"
    <*> o .:? "blacklisted"
    <*> o .:? "last_name_dat"
    <*> o .:? "service_description"
    <*> o .:? "email"
    <*> o .:? "first_name_dat"
    <*> o .:? "first_name_acc"
    <*> o .:? "first_name_nom"
    <*> o .:? "owner_state"
    <*> o .:? "has_unseen_stories"
    <*> o .:? "first_name_gen"
    <*> o .:? "last_name_nom"
    <*> o .:? "last_name_gen"
    <*> o .:? "common_count"
    <*> o .:? "music"
    <*> o .:? "last_name_ins"
    <*> o .:? "education_status"
    <*> o .:? "first_name_ins"
    <*> o .:? "can_subscribe_podcasts"
    <*> o .:? "bdate"
    <*> o .:? "test"
    <*> o .:? "photo_medium"
    <*> o .:? "relation"
    <*> o .:? "photo_max_orig"
    <*> o .:? "site"
    <*> o .:? "education_form"
    <*> o .:? "mobile_phone"
    <*> o .:? "timezone"
    <*> o .:? "is_subscribed_podcasts"
    <*> o .:? "facebook"
    <*> o .:? "country"
    <*> o .:? "personal"
    <*> o .:? "type"
    <*> o .:? "is_service"
    <*> o .:? "can_write_private_message"
    <*> o .:? "nickname"
    <*> o .:? "graduation"
    <*> o .:? "faculty"
    <*> o .:? "last_seen"
    <*> o .:? "about"
    <*> o .:? "interests"
    <*> o .:? "status_audio"
    <*> o .:? "photo_200_orig"
    <*> o .:? "photo_max_size"
    <*> o .:? "last_name_abl"
    <*> o .:? "home_town"
    <*> o .:? "language"
    <*> o .:? "wall_default"
    <*> o .:? "career"
    <*> o .:? "tv"
    <*> o .:? "can_see_all_posts"
    <*> o .:? "books"
    <*> o .:? "first_name_abl"
    <*> o .:? "role"
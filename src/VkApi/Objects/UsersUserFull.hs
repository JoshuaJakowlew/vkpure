module VkApi.Objects.UsersUserFull where

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

data UsersUserFull = UsersUserFull
  { usersUserFull_Deactivated :: Maybe Text
  , usersUserFull_Id :: Int
  , usersUserFull_LastName :: Text
  , usersUserFull_FirstName :: Text
  , usersUserFull_IsClosed :: Maybe Bool
  , usersUserFull_CanAccessClosed :: Maybe Bool
  , usersUserFull_Hidden :: Maybe Int
  , usersUserFull_Online :: Maybe BaseBoolInt
  , usersUserFull_FriendStatus :: Maybe FriendsFriendStatusStatus
  , usersUserFull_OnlineApp :: Maybe Int
  , usersUserFull_Trending :: Maybe BaseBoolInt
  , usersUserFull_OnlineMobile :: Maybe BaseBoolInt
  , usersUserFull_Mutual :: Maybe FriendsRequestsMutual
  , usersUserFull_ScreenName :: Maybe Text
  , usersUserFull_Verified :: Maybe BaseBoolInt
  , usersUserFull_OnlineInfo :: Maybe UsersOnlineInfo
  , usersUserFull_Photo50 :: Maybe Text
  , usersUserFull_Sex :: Maybe BaseSex
  , usersUserFull_Photo100 :: Maybe Text
  , usersUserFull_Photo400 :: Maybe Text
  , usersUserFull_RelationPartner :: Maybe UsersUserMin
  , usersUserFull_Military :: Maybe [UsersMilitary]
  , usersUserFull_PhotoBig :: Maybe Text
  , usersUserFull_Counters :: Maybe UsersUserCounters
  , usersUserFull_Exports :: Maybe UsersExports
  , usersUserFull_CanSubscribePosts :: Maybe Bool
  , usersUserFull_StoriesArchiveCount :: Maybe Int
  , usersUserFull_Status :: Maybe Text
  , usersUserFull_VideoLiveCount :: Maybe Int
  , usersUserFull_UniversityName :: Maybe Text
  , usersUserFull_CanSeeWishes :: Maybe Bool
  , usersUserFull_HomePhone :: Maybe Text
  , usersUserFull_HasPhoto :: Maybe BaseBoolInt
  , usersUserFull_Photo200 :: Maybe Text
  , usersUserFull_CanSeeAudio :: Maybe BaseBoolInt
  , usersUserFull_WallComments :: Maybe BaseBoolInt
  , usersUserFull_IsFavorite :: Maybe BaseBoolInt
  , usersUserFull_Quotes :: Maybe Text
  , usersUserFull_FollowersCount :: Maybe Int
  , usersUserFull_CanCall :: Maybe Bool
  , usersUserFull_ClipsCount :: Maybe Int
  , usersUserFull_VideoLiveLevel :: Maybe Int
  , usersUserFull_PhotoId :: Maybe Text
  , usersUserFull_UniversityGroupId :: Maybe Int
  , usersUserFull_CanBeInvitedGroup :: Maybe Bool
  , usersUserFull_CanPost :: Maybe BaseBoolInt
  , usersUserFull_IsVideoLiveNotificationsBlocked :: Maybe BaseBoolInt
  , usersUserFull_Movies :: Maybe Text
  , usersUserFull_Activities :: Maybe Text
  , usersUserFull_IsHiddenFromFeed :: Maybe BaseBoolInt
  , usersUserFull_Photo400Orig :: Maybe Text
  , usersUserFull_ContactName :: Maybe Text
  , usersUserFull_Instagram :: Maybe Text
  , usersUserFull_FacebookName :: Maybe Text
  , usersUserFull_CanCallFromGroup :: Maybe Bool
  , usersUserFull_FacultyName :: Maybe Text
  , usersUserFull_Domain :: Maybe Text
  , usersUserFull_VideoLive :: Maybe VideoLiveInfo
  , usersUserFull_CanSeeGifts :: Maybe BaseBoolInt
  , usersUserFull_CropPhoto :: Maybe BaseCropPhoto
  , usersUserFull_HasMobile :: Maybe BaseBoolInt
  , usersUserFull_Games :: Maybe Text
  , usersUserFull_Twitter :: Maybe Text
  , usersUserFull_Activity :: Maybe Text
  , usersUserFull_PhotoMediumRec :: Maybe PhotosPhotoFalseable
  , usersUserFull_IsNoIndex :: Maybe Bool
  , usersUserFull_Hash :: Maybe Text
  , usersUserFull_Universities :: Maybe [UsersUniversity]
  , usersUserFull_MaidenName :: Maybe Text
  , usersUserFull_Relatives :: Maybe [UsersRelative]
  , usersUserFull_CanUploadDoc :: Maybe BaseBoolInt
  , usersUserFull_PhotoRec :: Maybe PhotosPhotoFalseable
  , usersUserFull_BlacklistedByMe :: Maybe BaseBoolInt
  , usersUserFull_Schools :: Maybe [UsersSchool]
  , usersUserFull_PhotoMax :: Maybe Text
  , usersUserFull_City :: Maybe BaseCity
  , usersUserFull_Occupation :: Maybe UsersOccupation
  , usersUserFull_IsFriend :: Maybe BaseBoolInt
  , usersUserFull_Livejournal :: Maybe Text
  , usersUserFull_AccessKey :: Maybe Text
  , usersUserFull_Skype :: Maybe Text
  , usersUserFull_University :: Maybe Int
  , usersUserFull_LastNameAcc :: Maybe Text
  , usersUserFull_CanSendFriendRequest :: Maybe BaseBoolInt
  , usersUserFull_Photo :: Maybe Text
  , usersUserFull_Blacklisted :: Maybe BaseBoolInt
  , usersUserFull_LastNameDat :: Maybe Text
  , usersUserFull_ServiceDescription :: Maybe Text
  , usersUserFull_Email :: Maybe Text
  , usersUserFull_FirstNameDat :: Maybe Text
  , usersUserFull_FirstNameAcc :: Maybe Text
  , usersUserFull_FirstNameNom :: Maybe Text
  , usersUserFull_OwnerState :: Maybe OwnerState
  , usersUserFull_HasUnseenStories :: Maybe Bool
  , usersUserFull_FirstNameGen :: Maybe Text
  , usersUserFull_LastNameNom :: Maybe Text
  , usersUserFull_LastNameGen :: Maybe Text
  , usersUserFull_CommonCount :: Maybe Int
  , usersUserFull_Music :: Maybe Text
  , usersUserFull_LastNameIns :: Maybe Text
  , usersUserFull_EducationStatus :: Maybe Text
  , usersUserFull_FirstNameIns :: Maybe Text
  , usersUserFull_CanSubscribePodcasts :: Maybe Bool
  , usersUserFull_Bdate :: Maybe Text
  , usersUserFull_Test :: Maybe BaseBoolInt
  , usersUserFull_PhotoMedium :: Maybe PhotosPhotoFalseable
  , usersUserFull_Relation :: Maybe UsersUserRelation
  , usersUserFull_PhotoMaxOrig :: Maybe Text
  , usersUserFull_Site :: Maybe Text
  , usersUserFull_EducationForm :: Maybe Text
  , usersUserFull_MobilePhone :: Maybe Text
  , usersUserFull_Timezone :: Maybe Double
  , usersUserFull_IsSubscribedPodcasts :: Maybe Bool
  , usersUserFull_Facebook :: Maybe Text
  , usersUserFull_Country :: Maybe BaseCountry
  , usersUserFull_Personal :: Maybe UsersPersonal
  , usersUserFull_Type :: Maybe UsersUserType
  , usersUserFull_IsService :: Maybe Bool
  , usersUserFull_CanWritePrivateMessage :: Maybe BaseBoolInt
  , usersUserFull_Nickname :: Maybe Text
  , usersUserFull_Graduation :: Maybe Int
  , usersUserFull_Faculty :: Maybe Int
  , usersUserFull_LastSeen :: Maybe UsersLastSeen
  , usersUserFull_About :: Maybe Text
  , usersUserFull_Interests :: Maybe Text
  , usersUserFull_StatusAudio :: Maybe AudioAudio
  , usersUserFull_Photo200Orig :: Maybe Text
  , usersUserFull_PhotoMaxSize :: Maybe PhotosPhoto
  , usersUserFull_LastNameAbl :: Maybe Text
  , usersUserFull_HomeTown :: Maybe Text
  , usersUserFull_Language :: Maybe Text
  , usersUserFull_WallDefault :: Maybe Text
  , usersUserFull_Career :: Maybe [UsersCareer]
  , usersUserFull_Tv :: Maybe Text
  , usersUserFull_CanSeeAllPosts :: Maybe BaseBoolInt
  , usersUserFull_Books :: Maybe Text
  , usersUserFull_FirstNameAbl :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersUserFull where
  parseJSON = withObject "UsersUserFull" \o -> UsersUserFull
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
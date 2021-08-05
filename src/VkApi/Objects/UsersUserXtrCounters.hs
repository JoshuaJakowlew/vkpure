module VkApi.Objects.UsersUserXtrCounters where

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

data UsersUserXtrCounters = UsersUserXtrCounters
  { usersUserXtrCounters_Deactivated :: Maybe Text
  , usersUserXtrCounters_Id :: Int
  , usersUserXtrCounters_LastName :: Text
  , usersUserXtrCounters_FirstName :: Text
  , usersUserXtrCounters_IsClosed :: Maybe Bool
  , usersUserXtrCounters_CanAccessClosed :: Maybe Bool
  , usersUserXtrCounters_Hidden :: Maybe Int
  , usersUserXtrCounters_Online :: Maybe BaseBoolInt
  , usersUserXtrCounters_FriendStatus :: Maybe FriendsFriendStatusStatus
  , usersUserXtrCounters_OnlineApp :: Maybe Int
  , usersUserXtrCounters_Trending :: Maybe BaseBoolInt
  , usersUserXtrCounters_OnlineMobile :: Maybe BaseBoolInt
  , usersUserXtrCounters_Mutual :: Maybe FriendsRequestsMutual
  , usersUserXtrCounters_ScreenName :: Maybe Text
  , usersUserXtrCounters_Verified :: Maybe BaseBoolInt
  , usersUserXtrCounters_OnlineInfo :: Maybe UsersOnlineInfo
  , usersUserXtrCounters_Photo50 :: Maybe Text
  , usersUserXtrCounters_Sex :: Maybe BaseSex
  , usersUserXtrCounters_Photo100 :: Maybe Text
  , usersUserXtrCounters_Photo400 :: Maybe Text
  , usersUserXtrCounters_RelationPartner :: Maybe UsersUserMin
  , usersUserXtrCounters_Military :: Maybe [UsersMilitary]
  , usersUserXtrCounters_PhotoBig :: Maybe Text
  , usersUserXtrCounters_Counters :: Maybe UsersUserCounters
  , usersUserXtrCounters_Exports :: Maybe UsersExports
  , usersUserXtrCounters_CanSubscribePosts :: Maybe Bool
  , usersUserXtrCounters_StoriesArchiveCount :: Maybe Int
  , usersUserXtrCounters_Status :: Maybe Text
  , usersUserXtrCounters_VideoLiveCount :: Maybe Int
  , usersUserXtrCounters_UniversityName :: Maybe Text
  , usersUserXtrCounters_CanSeeWishes :: Maybe Bool
  , usersUserXtrCounters_HomePhone :: Maybe Text
  , usersUserXtrCounters_HasPhoto :: Maybe BaseBoolInt
  , usersUserXtrCounters_Photo200 :: Maybe Text
  , usersUserXtrCounters_CanSeeAudio :: Maybe BaseBoolInt
  , usersUserXtrCounters_WallComments :: Maybe BaseBoolInt
  , usersUserXtrCounters_IsFavorite :: Maybe BaseBoolInt
  , usersUserXtrCounters_Quotes :: Maybe Text
  , usersUserXtrCounters_FollowersCount :: Maybe Int
  , usersUserXtrCounters_CanCall :: Maybe Bool
  , usersUserXtrCounters_ClipsCount :: Maybe Int
  , usersUserXtrCounters_VideoLiveLevel :: Maybe Int
  , usersUserXtrCounters_PhotoId :: Maybe Text
  , usersUserXtrCounters_UniversityGroupId :: Maybe Int
  , usersUserXtrCounters_CanBeInvitedGroup :: Maybe Bool
  , usersUserXtrCounters_CanPost :: Maybe BaseBoolInt
  , usersUserXtrCounters_IsVideoLiveNotificationsBlocked :: Maybe BaseBoolInt
  , usersUserXtrCounters_Movies :: Maybe Text
  , usersUserXtrCounters_Activities :: Maybe Text
  , usersUserXtrCounters_IsHiddenFromFeed :: Maybe BaseBoolInt
  , usersUserXtrCounters_Photo400Orig :: Maybe Text
  , usersUserXtrCounters_ContactName :: Maybe Text
  , usersUserXtrCounters_Instagram :: Maybe Text
  , usersUserXtrCounters_FacebookName :: Maybe Text
  , usersUserXtrCounters_CanCallFromGroup :: Maybe Bool
  , usersUserXtrCounters_FacultyName :: Maybe Text
  , usersUserXtrCounters_Domain :: Maybe Text
  , usersUserXtrCounters_VideoLive :: Maybe VideoLiveInfo
  , usersUserXtrCounters_CanSeeGifts :: Maybe BaseBoolInt
  , usersUserXtrCounters_CropPhoto :: Maybe BaseCropPhoto
  , usersUserXtrCounters_HasMobile :: Maybe BaseBoolInt
  , usersUserXtrCounters_Games :: Maybe Text
  , usersUserXtrCounters_Twitter :: Maybe Text
  , usersUserXtrCounters_Activity :: Maybe Text
  , usersUserXtrCounters_PhotoMediumRec :: Maybe PhotosPhotoFalseable
  , usersUserXtrCounters_IsNoIndex :: Maybe Bool
  , usersUserXtrCounters_Hash :: Maybe Text
  , usersUserXtrCounters_Universities :: Maybe [UsersUniversity]
  , usersUserXtrCounters_MaidenName :: Maybe Text
  , usersUserXtrCounters_Relatives :: Maybe [UsersRelative]
  , usersUserXtrCounters_CanUploadDoc :: Maybe BaseBoolInt
  , usersUserXtrCounters_PhotoRec :: Maybe PhotosPhotoFalseable
  , usersUserXtrCounters_BlacklistedByMe :: Maybe BaseBoolInt
  , usersUserXtrCounters_Schools :: Maybe [UsersSchool]
  , usersUserXtrCounters_PhotoMax :: Maybe Text
  , usersUserXtrCounters_City :: Maybe BaseCity
  , usersUserXtrCounters_Occupation :: Maybe UsersOccupation
  , usersUserXtrCounters_IsFriend :: Maybe BaseBoolInt
  , usersUserXtrCounters_Livejournal :: Maybe Text
  , usersUserXtrCounters_AccessKey :: Maybe Text
  , usersUserXtrCounters_Skype :: Maybe Text
  , usersUserXtrCounters_University :: Maybe Int
  , usersUserXtrCounters_LastNameAcc :: Maybe Text
  , usersUserXtrCounters_CanSendFriendRequest :: Maybe BaseBoolInt
  , usersUserXtrCounters_Photo :: Maybe Text
  , usersUserXtrCounters_Blacklisted :: Maybe BaseBoolInt
  , usersUserXtrCounters_LastNameDat :: Maybe Text
  , usersUserXtrCounters_ServiceDescription :: Maybe Text
  , usersUserXtrCounters_Email :: Maybe Text
  , usersUserXtrCounters_FirstNameDat :: Maybe Text
  , usersUserXtrCounters_FirstNameAcc :: Maybe Text
  , usersUserXtrCounters_FirstNameNom :: Maybe Text
  , usersUserXtrCounters_OwnerState :: Maybe OwnerState
  , usersUserXtrCounters_HasUnseenStories :: Maybe Bool
  , usersUserXtrCounters_FirstNameGen :: Maybe Text
  , usersUserXtrCounters_LastNameNom :: Maybe Text
  , usersUserXtrCounters_LastNameGen :: Maybe Text
  , usersUserXtrCounters_CommonCount :: Maybe Int
  , usersUserXtrCounters_Music :: Maybe Text
  , usersUserXtrCounters_LastNameIns :: Maybe Text
  , usersUserXtrCounters_EducationStatus :: Maybe Text
  , usersUserXtrCounters_FirstNameIns :: Maybe Text
  , usersUserXtrCounters_CanSubscribePodcasts :: Maybe Bool
  , usersUserXtrCounters_Bdate :: Maybe Text
  , usersUserXtrCounters_Test :: Maybe BaseBoolInt
  , usersUserXtrCounters_PhotoMedium :: Maybe PhotosPhotoFalseable
  , usersUserXtrCounters_Relation :: Maybe UsersUserRelation
  , usersUserXtrCounters_PhotoMaxOrig :: Maybe Text
  , usersUserXtrCounters_Site :: Maybe Text
  , usersUserXtrCounters_EducationForm :: Maybe Text
  , usersUserXtrCounters_MobilePhone :: Maybe Text
  , usersUserXtrCounters_Timezone :: Maybe Double
  , usersUserXtrCounters_IsSubscribedPodcasts :: Maybe Bool
  , usersUserXtrCounters_Facebook :: Maybe Text
  , usersUserXtrCounters_Country :: Maybe BaseCountry
  , usersUserXtrCounters_Personal :: Maybe UsersPersonal
  , usersUserXtrCounters_Type :: Maybe UsersUserType
  , usersUserXtrCounters_IsService :: Maybe Bool
  , usersUserXtrCounters_CanWritePrivateMessage :: Maybe BaseBoolInt
  , usersUserXtrCounters_Nickname :: Maybe Text
  , usersUserXtrCounters_Graduation :: Maybe Int
  , usersUserXtrCounters_Faculty :: Maybe Int
  , usersUserXtrCounters_LastSeen :: Maybe UsersLastSeen
  , usersUserXtrCounters_About :: Maybe Text
  , usersUserXtrCounters_Interests :: Maybe Text
  , usersUserXtrCounters_StatusAudio :: Maybe AudioAudio
  , usersUserXtrCounters_Photo200Orig :: Maybe Text
  , usersUserXtrCounters_PhotoMaxSize :: Maybe PhotosPhoto
  , usersUserXtrCounters_LastNameAbl :: Maybe Text
  , usersUserXtrCounters_HomeTown :: Maybe Text
  , usersUserXtrCounters_Language :: Maybe Text
  , usersUserXtrCounters_WallDefault :: Maybe Text
  , usersUserXtrCounters_Career :: Maybe [UsersCareer]
  , usersUserXtrCounters_Tv :: Maybe Text
  , usersUserXtrCounters_CanSeeAllPosts :: Maybe BaseBoolInt
  , usersUserXtrCounters_Books :: Maybe Text
  , usersUserXtrCounters_FirstNameAbl :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersUserXtrCounters where
  parseJSON = withObject "UsersUserXtrCounters" \o -> UsersUserXtrCounters
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
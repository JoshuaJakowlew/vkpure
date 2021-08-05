module VkApi.Objects.FriendsUserXtrLists where

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

data FriendsUserXtrLists = FriendsUserXtrLists
  { friendsUserXtrLists_Deactivated :: Maybe Text
  , friendsUserXtrLists_Id :: Int
  , friendsUserXtrLists_LastName :: Text
  , friendsUserXtrLists_FirstName :: Text
  , friendsUserXtrLists_IsClosed :: Maybe Bool
  , friendsUserXtrLists_CanAccessClosed :: Maybe Bool
  , friendsUserXtrLists_Hidden :: Maybe Int
  , friendsUserXtrLists_Online :: Maybe BaseBoolInt
  , friendsUserXtrLists_FriendStatus :: Maybe FriendsFriendStatusStatus
  , friendsUserXtrLists_OnlineApp :: Maybe Int
  , friendsUserXtrLists_Trending :: Maybe BaseBoolInt
  , friendsUserXtrLists_OnlineMobile :: Maybe BaseBoolInt
  , friendsUserXtrLists_Mutual :: Maybe FriendsRequestsMutual
  , friendsUserXtrLists_ScreenName :: Maybe Text
  , friendsUserXtrLists_Verified :: Maybe BaseBoolInt
  , friendsUserXtrLists_OnlineInfo :: Maybe UsersOnlineInfo
  , friendsUserXtrLists_Photo50 :: Maybe Text
  , friendsUserXtrLists_Sex :: Maybe BaseSex
  , friendsUserXtrLists_Photo100 :: Maybe Text
  , friendsUserXtrLists_Photo400 :: Maybe Text
  , friendsUserXtrLists_RelationPartner :: Maybe UsersUserMin
  , friendsUserXtrLists_Military :: Maybe [UsersMilitary]
  , friendsUserXtrLists_PhotoBig :: Maybe Text
  , friendsUserXtrLists_Counters :: Maybe UsersUserCounters
  , friendsUserXtrLists_Exports :: Maybe UsersExports
  , friendsUserXtrLists_CanSubscribePosts :: Maybe Bool
  , friendsUserXtrLists_StoriesArchiveCount :: Maybe Int
  , friendsUserXtrLists_Status :: Maybe Text
  , friendsUserXtrLists_VideoLiveCount :: Maybe Int
  , friendsUserXtrLists_UniversityName :: Maybe Text
  , friendsUserXtrLists_CanSeeWishes :: Maybe Bool
  , friendsUserXtrLists_HomePhone :: Maybe Text
  , friendsUserXtrLists_HasPhoto :: Maybe BaseBoolInt
  , friendsUserXtrLists_Photo200 :: Maybe Text
  , friendsUserXtrLists_CanSeeAudio :: Maybe BaseBoolInt
  , friendsUserXtrLists_WallComments :: Maybe BaseBoolInt
  , friendsUserXtrLists_IsFavorite :: Maybe BaseBoolInt
  , friendsUserXtrLists_Quotes :: Maybe Text
  , friendsUserXtrLists_FollowersCount :: Maybe Int
  , friendsUserXtrLists_CanCall :: Maybe Bool
  , friendsUserXtrLists_ClipsCount :: Maybe Int
  , friendsUserXtrLists_VideoLiveLevel :: Maybe Int
  , friendsUserXtrLists_PhotoId :: Maybe Text
  , friendsUserXtrLists_UniversityGroupId :: Maybe Int
  , friendsUserXtrLists_CanBeInvitedGroup :: Maybe Bool
  , friendsUserXtrLists_CanPost :: Maybe BaseBoolInt
  , friendsUserXtrLists_IsVideoLiveNotificationsBlocked :: Maybe BaseBoolInt
  , friendsUserXtrLists_Movies :: Maybe Text
  , friendsUserXtrLists_Activities :: Maybe Text
  , friendsUserXtrLists_IsHiddenFromFeed :: Maybe BaseBoolInt
  , friendsUserXtrLists_Photo400Orig :: Maybe Text
  , friendsUserXtrLists_ContactName :: Maybe Text
  , friendsUserXtrLists_Instagram :: Maybe Text
  , friendsUserXtrLists_FacebookName :: Maybe Text
  , friendsUserXtrLists_CanCallFromGroup :: Maybe Bool
  , friendsUserXtrLists_FacultyName :: Maybe Text
  , friendsUserXtrLists_Domain :: Maybe Text
  , friendsUserXtrLists_VideoLive :: Maybe VideoLiveInfo
  , friendsUserXtrLists_CanSeeGifts :: Maybe BaseBoolInt
  , friendsUserXtrLists_CropPhoto :: Maybe BaseCropPhoto
  , friendsUserXtrLists_HasMobile :: Maybe BaseBoolInt
  , friendsUserXtrLists_Games :: Maybe Text
  , friendsUserXtrLists_Twitter :: Maybe Text
  , friendsUserXtrLists_Activity :: Maybe Text
  , friendsUserXtrLists_PhotoMediumRec :: Maybe PhotosPhotoFalseable
  , friendsUserXtrLists_IsNoIndex :: Maybe Bool
  , friendsUserXtrLists_Hash :: Maybe Text
  , friendsUserXtrLists_Universities :: Maybe [UsersUniversity]
  , friendsUserXtrLists_MaidenName :: Maybe Text
  , friendsUserXtrLists_Relatives :: Maybe [UsersRelative]
  , friendsUserXtrLists_CanUploadDoc :: Maybe BaseBoolInt
  , friendsUserXtrLists_PhotoRec :: Maybe PhotosPhotoFalseable
  , friendsUserXtrLists_BlacklistedByMe :: Maybe BaseBoolInt
  , friendsUserXtrLists_Schools :: Maybe [UsersSchool]
  , friendsUserXtrLists_PhotoMax :: Maybe Text
  , friendsUserXtrLists_City :: Maybe BaseCity
  , friendsUserXtrLists_Occupation :: Maybe UsersOccupation
  , friendsUserXtrLists_IsFriend :: Maybe BaseBoolInt
  , friendsUserXtrLists_Livejournal :: Maybe Text
  , friendsUserXtrLists_AccessKey :: Maybe Text
  , friendsUserXtrLists_Skype :: Maybe Text
  , friendsUserXtrLists_University :: Maybe Int
  , friendsUserXtrLists_LastNameAcc :: Maybe Text
  , friendsUserXtrLists_CanSendFriendRequest :: Maybe BaseBoolInt
  , friendsUserXtrLists_Photo :: Maybe Text
  , friendsUserXtrLists_Blacklisted :: Maybe BaseBoolInt
  , friendsUserXtrLists_LastNameDat :: Maybe Text
  , friendsUserXtrLists_ServiceDescription :: Maybe Text
  , friendsUserXtrLists_Email :: Maybe Text
  , friendsUserXtrLists_FirstNameDat :: Maybe Text
  , friendsUserXtrLists_FirstNameAcc :: Maybe Text
  , friendsUserXtrLists_FirstNameNom :: Maybe Text
  , friendsUserXtrLists_OwnerState :: Maybe OwnerState
  , friendsUserXtrLists_HasUnseenStories :: Maybe Bool
  , friendsUserXtrLists_FirstNameGen :: Maybe Text
  , friendsUserXtrLists_LastNameNom :: Maybe Text
  , friendsUserXtrLists_LastNameGen :: Maybe Text
  , friendsUserXtrLists_CommonCount :: Maybe Int
  , friendsUserXtrLists_Music :: Maybe Text
  , friendsUserXtrLists_LastNameIns :: Maybe Text
  , friendsUserXtrLists_EducationStatus :: Maybe Text
  , friendsUserXtrLists_FirstNameIns :: Maybe Text
  , friendsUserXtrLists_CanSubscribePodcasts :: Maybe Bool
  , friendsUserXtrLists_Bdate :: Maybe Text
  , friendsUserXtrLists_Test :: Maybe BaseBoolInt
  , friendsUserXtrLists_PhotoMedium :: Maybe PhotosPhotoFalseable
  , friendsUserXtrLists_Relation :: Maybe UsersUserRelation
  , friendsUserXtrLists_PhotoMaxOrig :: Maybe Text
  , friendsUserXtrLists_Site :: Maybe Text
  , friendsUserXtrLists_EducationForm :: Maybe Text
  , friendsUserXtrLists_MobilePhone :: Maybe Text
  , friendsUserXtrLists_Timezone :: Maybe Double
  , friendsUserXtrLists_IsSubscribedPodcasts :: Maybe Bool
  , friendsUserXtrLists_Facebook :: Maybe Text
  , friendsUserXtrLists_Country :: Maybe BaseCountry
  , friendsUserXtrLists_Personal :: Maybe UsersPersonal
  , friendsUserXtrLists_Type :: Maybe UsersUserType
  , friendsUserXtrLists_IsService :: Maybe Bool
  , friendsUserXtrLists_CanWritePrivateMessage :: Maybe BaseBoolInt
  , friendsUserXtrLists_Nickname :: Maybe Text
  , friendsUserXtrLists_Graduation :: Maybe Int
  , friendsUserXtrLists_Faculty :: Maybe Int
  , friendsUserXtrLists_LastSeen :: Maybe UsersLastSeen
  , friendsUserXtrLists_About :: Maybe Text
  , friendsUserXtrLists_Interests :: Maybe Text
  , friendsUserXtrLists_StatusAudio :: Maybe AudioAudio
  , friendsUserXtrLists_Photo200Orig :: Maybe Text
  , friendsUserXtrLists_PhotoMaxSize :: Maybe PhotosPhoto
  , friendsUserXtrLists_LastNameAbl :: Maybe Text
  , friendsUserXtrLists_HomeTown :: Maybe Text
  , friendsUserXtrLists_Language :: Maybe Text
  , friendsUserXtrLists_WallDefault :: Maybe Text
  , friendsUserXtrLists_Career :: Maybe [UsersCareer]
  , friendsUserXtrLists_Tv :: Maybe Text
  , friendsUserXtrLists_CanSeeAllPosts :: Maybe BaseBoolInt
  , friendsUserXtrLists_Books :: Maybe Text
  , friendsUserXtrLists_FirstNameAbl :: Maybe Text
  , friendsUserXtrLists_Lists :: Maybe [Int]
  } deriving (Show, Generic)

instance FromJSON FriendsUserXtrLists where
  parseJSON = withObject "FriendsUserXtrLists" \o -> FriendsUserXtrLists
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
    <*> o .:? "lists"
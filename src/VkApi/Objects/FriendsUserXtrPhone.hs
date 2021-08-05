module VkApi.Objects.FriendsUserXtrPhone where

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

data FriendsUserXtrPhone = FriendsUserXtrPhone
  { friendsUserXtrPhone_Deactivated :: Maybe Text
  , friendsUserXtrPhone_Id :: Int
  , friendsUserXtrPhone_LastName :: Text
  , friendsUserXtrPhone_FirstName :: Text
  , friendsUserXtrPhone_IsClosed :: Maybe Bool
  , friendsUserXtrPhone_CanAccessClosed :: Maybe Bool
  , friendsUserXtrPhone_Hidden :: Maybe Int
  , friendsUserXtrPhone_Online :: Maybe BaseBoolInt
  , friendsUserXtrPhone_FriendStatus :: Maybe FriendsFriendStatusStatus
  , friendsUserXtrPhone_OnlineApp :: Maybe Int
  , friendsUserXtrPhone_Trending :: Maybe BaseBoolInt
  , friendsUserXtrPhone_OnlineMobile :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Mutual :: Maybe FriendsRequestsMutual
  , friendsUserXtrPhone_ScreenName :: Maybe Text
  , friendsUserXtrPhone_Verified :: Maybe BaseBoolInt
  , friendsUserXtrPhone_OnlineInfo :: Maybe UsersOnlineInfo
  , friendsUserXtrPhone_Photo50 :: Maybe Text
  , friendsUserXtrPhone_Sex :: Maybe BaseSex
  , friendsUserXtrPhone_Photo100 :: Maybe Text
  , friendsUserXtrPhone_Photo400 :: Maybe Text
  , friendsUserXtrPhone_RelationPartner :: Maybe UsersUserMin
  , friendsUserXtrPhone_Military :: Maybe [UsersMilitary]
  , friendsUserXtrPhone_PhotoBig :: Maybe Text
  , friendsUserXtrPhone_Counters :: Maybe UsersUserCounters
  , friendsUserXtrPhone_Exports :: Maybe UsersExports
  , friendsUserXtrPhone_CanSubscribePosts :: Maybe Bool
  , friendsUserXtrPhone_StoriesArchiveCount :: Maybe Int
  , friendsUserXtrPhone_Status :: Maybe Text
  , friendsUserXtrPhone_VideoLiveCount :: Maybe Int
  , friendsUserXtrPhone_UniversityName :: Maybe Text
  , friendsUserXtrPhone_CanSeeWishes :: Maybe Bool
  , friendsUserXtrPhone_HomePhone :: Maybe Text
  , friendsUserXtrPhone_HasPhoto :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Photo200 :: Maybe Text
  , friendsUserXtrPhone_CanSeeAudio :: Maybe BaseBoolInt
  , friendsUserXtrPhone_WallComments :: Maybe BaseBoolInt
  , friendsUserXtrPhone_IsFavorite :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Quotes :: Maybe Text
  , friendsUserXtrPhone_FollowersCount :: Maybe Int
  , friendsUserXtrPhone_CanCall :: Maybe Bool
  , friendsUserXtrPhone_ClipsCount :: Maybe Int
  , friendsUserXtrPhone_VideoLiveLevel :: Maybe Int
  , friendsUserXtrPhone_PhotoId :: Maybe Text
  , friendsUserXtrPhone_UniversityGroupId :: Maybe Int
  , friendsUserXtrPhone_CanBeInvitedGroup :: Maybe Bool
  , friendsUserXtrPhone_CanPost :: Maybe BaseBoolInt
  , friendsUserXtrPhone_IsVideoLiveNotificationsBlocked :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Movies :: Maybe Text
  , friendsUserXtrPhone_Activities :: Maybe Text
  , friendsUserXtrPhone_IsHiddenFromFeed :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Photo400Orig :: Maybe Text
  , friendsUserXtrPhone_ContactName :: Maybe Text
  , friendsUserXtrPhone_Instagram :: Maybe Text
  , friendsUserXtrPhone_FacebookName :: Maybe Text
  , friendsUserXtrPhone_CanCallFromGroup :: Maybe Bool
  , friendsUserXtrPhone_FacultyName :: Maybe Text
  , friendsUserXtrPhone_Domain :: Maybe Text
  , friendsUserXtrPhone_VideoLive :: Maybe VideoLiveInfo
  , friendsUserXtrPhone_CanSeeGifts :: Maybe BaseBoolInt
  , friendsUserXtrPhone_CropPhoto :: Maybe BaseCropPhoto
  , friendsUserXtrPhone_HasMobile :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Games :: Maybe Text
  , friendsUserXtrPhone_Twitter :: Maybe Text
  , friendsUserXtrPhone_Activity :: Maybe Text
  , friendsUserXtrPhone_PhotoMediumRec :: Maybe PhotosPhotoFalseable
  , friendsUserXtrPhone_IsNoIndex :: Maybe Bool
  , friendsUserXtrPhone_Hash :: Maybe Text
  , friendsUserXtrPhone_Universities :: Maybe [UsersUniversity]
  , friendsUserXtrPhone_MaidenName :: Maybe Text
  , friendsUserXtrPhone_Relatives :: Maybe [UsersRelative]
  , friendsUserXtrPhone_CanUploadDoc :: Maybe BaseBoolInt
  , friendsUserXtrPhone_PhotoRec :: Maybe PhotosPhotoFalseable
  , friendsUserXtrPhone_BlacklistedByMe :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Schools :: Maybe [UsersSchool]
  , friendsUserXtrPhone_PhotoMax :: Maybe Text
  , friendsUserXtrPhone_City :: Maybe BaseCity
  , friendsUserXtrPhone_Occupation :: Maybe UsersOccupation
  , friendsUserXtrPhone_IsFriend :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Livejournal :: Maybe Text
  , friendsUserXtrPhone_AccessKey :: Maybe Text
  , friendsUserXtrPhone_Skype :: Maybe Text
  , friendsUserXtrPhone_University :: Maybe Int
  , friendsUserXtrPhone_LastNameAcc :: Maybe Text
  , friendsUserXtrPhone_CanSendFriendRequest :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Photo :: Maybe Text
  , friendsUserXtrPhone_Blacklisted :: Maybe BaseBoolInt
  , friendsUserXtrPhone_LastNameDat :: Maybe Text
  , friendsUserXtrPhone_ServiceDescription :: Maybe Text
  , friendsUserXtrPhone_Email :: Maybe Text
  , friendsUserXtrPhone_FirstNameDat :: Maybe Text
  , friendsUserXtrPhone_FirstNameAcc :: Maybe Text
  , friendsUserXtrPhone_FirstNameNom :: Maybe Text
  , friendsUserXtrPhone_OwnerState :: Maybe OwnerState
  , friendsUserXtrPhone_HasUnseenStories :: Maybe Bool
  , friendsUserXtrPhone_FirstNameGen :: Maybe Text
  , friendsUserXtrPhone_LastNameNom :: Maybe Text
  , friendsUserXtrPhone_LastNameGen :: Maybe Text
  , friendsUserXtrPhone_CommonCount :: Maybe Int
  , friendsUserXtrPhone_Music :: Maybe Text
  , friendsUserXtrPhone_LastNameIns :: Maybe Text
  , friendsUserXtrPhone_EducationStatus :: Maybe Text
  , friendsUserXtrPhone_FirstNameIns :: Maybe Text
  , friendsUserXtrPhone_CanSubscribePodcasts :: Maybe Bool
  , friendsUserXtrPhone_Bdate :: Maybe Text
  , friendsUserXtrPhone_Test :: Maybe BaseBoolInt
  , friendsUserXtrPhone_PhotoMedium :: Maybe PhotosPhotoFalseable
  , friendsUserXtrPhone_Relation :: Maybe UsersUserRelation
  , friendsUserXtrPhone_PhotoMaxOrig :: Maybe Text
  , friendsUserXtrPhone_Site :: Maybe Text
  , friendsUserXtrPhone_EducationForm :: Maybe Text
  , friendsUserXtrPhone_MobilePhone :: Maybe Text
  , friendsUserXtrPhone_Timezone :: Maybe Double
  , friendsUserXtrPhone_IsSubscribedPodcasts :: Maybe Bool
  , friendsUserXtrPhone_Facebook :: Maybe Text
  , friendsUserXtrPhone_Country :: Maybe BaseCountry
  , friendsUserXtrPhone_Personal :: Maybe UsersPersonal
  , friendsUserXtrPhone_Type :: Maybe UsersUserType
  , friendsUserXtrPhone_IsService :: Maybe Bool
  , friendsUserXtrPhone_CanWritePrivateMessage :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Nickname :: Maybe Text
  , friendsUserXtrPhone_Graduation :: Maybe Int
  , friendsUserXtrPhone_Faculty :: Maybe Int
  , friendsUserXtrPhone_LastSeen :: Maybe UsersLastSeen
  , friendsUserXtrPhone_About :: Maybe Text
  , friendsUserXtrPhone_Interests :: Maybe Text
  , friendsUserXtrPhone_StatusAudio :: Maybe AudioAudio
  , friendsUserXtrPhone_Photo200Orig :: Maybe Text
  , friendsUserXtrPhone_PhotoMaxSize :: Maybe PhotosPhoto
  , friendsUserXtrPhone_LastNameAbl :: Maybe Text
  , friendsUserXtrPhone_HomeTown :: Maybe Text
  , friendsUserXtrPhone_Language :: Maybe Text
  , friendsUserXtrPhone_WallDefault :: Maybe Text
  , friendsUserXtrPhone_Career :: Maybe [UsersCareer]
  , friendsUserXtrPhone_Tv :: Maybe Text
  , friendsUserXtrPhone_CanSeeAllPosts :: Maybe BaseBoolInt
  , friendsUserXtrPhone_Books :: Maybe Text
  , friendsUserXtrPhone_FirstNameAbl :: Maybe Text
  , friendsUserXtrPhone_Phone :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON FriendsUserXtrPhone where
  parseJSON = withObject "FriendsUserXtrPhone" \o -> FriendsUserXtrPhone
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
    <*> o .:? "phone"
module VkApi.Objects.UsersUserCounters where

import VkApi.Objects.Utils



data UsersUserCounters = UsersUserCounters
  { usersUserCounters_Groups :: Maybe Int
  , usersUserCounters_Friends :: Maybe Int
  , usersUserCounters_NewPhotoTags :: Maybe Int
  , usersUserCounters_UserPhotos :: Maybe Int
  , usersUserCounters_Posts :: Maybe Int
  , usersUserCounters_Wishes :: Maybe Int
  , usersUserCounters_Notes :: Maybe Int
  , usersUserCounters_Subscriptions :: Maybe Int
  , usersUserCounters_Audios :: Maybe Int
  , usersUserCounters_Podcasts :: Maybe Int
  , usersUserCounters_NewRecognitionTags :: Maybe Int
  , usersUserCounters_MutualFriends :: Maybe Int
  , usersUserCounters_Videos :: Maybe Int
  , usersUserCounters_Photos :: Maybe Int
  , usersUserCounters_Articles :: Maybe Int
  , usersUserCounters_Gifts :: Maybe Int
  , usersUserCounters_ClipsFollowers :: Maybe Int
  , usersUserCounters_UserVideos :: Maybe Int
  , usersUserCounters_Albums :: Maybe Int
  , usersUserCounters_OnlineFriends :: Maybe Int
  , usersUserCounters_Pages :: Maybe Int
  , usersUserCounters_Clips :: Maybe Int
  , usersUserCounters_Followers :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersUserCounters where
  parseJSON = withObject "UsersUserCounters" \o -> UsersUserCounters
    <$> o .:? "groups"
    <*> o .:? "friends"
    <*> o .:? "new_photo_tags"
    <*> o .:? "user_photos"
    <*> o .:? "posts"
    <*> o .:? "wishes"
    <*> o .:? "notes"
    <*> o .:? "subscriptions"
    <*> o .:? "audios"
    <*> o .:? "podcasts"
    <*> o .:? "new_recognition_tags"
    <*> o .:? "mutual_friends"
    <*> o .:? "videos"
    <*> o .:? "photos"
    <*> o .:? "articles"
    <*> o .:? "gifts"
    <*> o .:? "clips_followers"
    <*> o .:? "user_videos"
    <*> o .:? "albums"
    <*> o .:? "online_friends"
    <*> o .:? "pages"
    <*> o .:? "clips"
    <*> o .:? "followers"
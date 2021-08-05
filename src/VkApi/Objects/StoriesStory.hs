module VkApi.Objects.StoriesStory where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesReplies
import VkApi.Objects.StoriesClickableStickers
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.StoriesStoryLink
import VkApi.Objects.PhotosPhoto
import VkApi.Objects.VideoVideo
import VkApi.Objects.StoriesStoryType

data StoriesStory = StoriesStory
  { storiesStory_CanUseInNarrative :: Maybe Bool
  , storiesStory_NarrativesCount :: Maybe Int
  , storiesStory_ParentStoryOwnerId :: Maybe Int
  , storiesStory_Replies :: Maybe StoriesReplies
  , storiesStory_ClickableStickers :: Maybe StoriesClickableStickers
  , storiesStory_CanReply :: Maybe BaseBoolInt
  , storiesStory_Views :: Maybe Int
  , storiesStory_CanShare :: Maybe BaseBoolInt
  , storiesStory_CanHide :: Maybe BaseBoolInt
  , storiesStory_ParentStoryAccessKey :: Maybe Text
  , storiesStory_IsDeleted :: Maybe Bool
  , storiesStory_CanSee :: Maybe BaseBoolInt
  , storiesStory_Link :: Maybe StoriesStoryLink
  , storiesStory_Id :: Int
  , storiesStory_CanAsk :: Maybe BaseBoolInt
  , storiesStory_ParentStoryId :: Maybe Int
  , storiesStory_BirthdayWishUserId :: Maybe Int
  , storiesStory_AccessKey :: Maybe Text
  , storiesStory_Date :: Maybe Int
  , storiesStory_Photo :: Maybe PhotosPhoto
  , storiesStory_Video :: Maybe VideoVideo
  , storiesStory_CanAskAnonymous :: Maybe BaseBoolInt
  , storiesStory_OwnerId :: Int
  , storiesStory_CanLike :: Maybe Bool
  , storiesStory_Type :: Maybe StoriesStoryType
  , storiesStory_CanComment :: Maybe BaseBoolInt
  , storiesStory_ParentStory :: Maybe StoriesStory
  , storiesStory_Seen :: Maybe BaseBoolInt
  , storiesStory_ExpiresAt :: Maybe Int
  , storiesStory_IsExpired :: Maybe Bool
  , storiesStory_FirstNarrativeTitle :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON StoriesStory where
  parseJSON = withObject "StoriesStory" \o -> StoriesStory
    <$> o .:? "can_use_in_narrative"
    <*> o .:? "narratives_count"
    <*> o .:? "parent_story_owner_id"
    <*> o .:? "replies"
    <*> o .:? "clickable_stickers"
    <*> o .:? "can_reply"
    <*> o .:? "views"
    <*> o .:? "can_share"
    <*> o .:? "can_hide"
    <*> o .:? "parent_story_access_key"
    <*> o .:? "is_deleted"
    <*> o .:? "can_see"
    <*> o .:? "link"
    <*> o .: "id"
    <*> o .:? "can_ask"
    <*> o .:? "parent_story_id"
    <*> o .:? "birthday_wish_user_id"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .:? "photo"
    <*> o .:? "video"
    <*> o .:? "can_ask_anonymous"
    <*> o .: "owner_id"
    <*> o .:? "can_like"
    <*> o .:? "type"
    <*> o .:? "can_comment"
    <*> o .:? "parent_story"
    <*> o .:? "seen"
    <*> o .:? "expires_at"
    <*> o .:? "is_expired"
    <*> o .:? "first_narrative_title"
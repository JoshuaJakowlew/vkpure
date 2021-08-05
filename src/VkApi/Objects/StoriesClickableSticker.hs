module VkApi.Objects.StoriesClickableSticker where

import VkApi.Objects.Utils

import VkApi.Objects.StoriesClickableArea
import VkApi.Objects.MarketMarketItem
import VkApi.Objects.PollsPoll
import VkApi.Objects.AppsAppMin
import VkApi.Objects.AudioAudio
import VkApi.Objects.BaseLink

data StoriesClickableSticker = StoriesClickableSticker
  { storiesClickableSticker_HasNewInteractions :: Maybe Bool
  , storiesClickableSticker_SituationalThemeId :: Maybe Int
  , storiesClickableSticker_ClickableArea :: [StoriesClickableArea]
  , storiesClickableSticker_Subtype :: Maybe Text
  , storiesClickableSticker_StoryId :: Maybe Int
  , storiesClickableSticker_PlaceId :: Maybe Int
  , storiesClickableSticker_MarketItem :: Maybe MarketMarketItem
  , storiesClickableSticker_Question :: Maybe Text
  , storiesClickableSticker_AudioStartTime :: Maybe Int
  , storiesClickableSticker_Id :: Int
  , storiesClickableSticker_Color :: Maybe Text
  , storiesClickableSticker_Poll :: Maybe PollsPoll
  , storiesClickableSticker_TooltipText :: Maybe Text
  , storiesClickableSticker_Style :: Maybe Text
  , storiesClickableSticker_QuestionButton :: Maybe Text
  , storiesClickableSticker_PostOwnerId :: Maybe Int
  , storiesClickableSticker_IsBroadcastNotifyAllowed :: Maybe Bool
  , storiesClickableSticker_AppContext :: Maybe Text
  , storiesClickableSticker_SituationalAppUrl :: Maybe Text
  , storiesClickableSticker_App :: Maybe AppsAppMin
  , storiesClickableSticker_Audio :: Maybe AudioAudio
  , storiesClickableSticker_OwnerId :: Maybe Int
  , storiesClickableSticker_StickerId :: Maybe Int
  , storiesClickableSticker_Hashtag :: Maybe Text
  , storiesClickableSticker_Type :: Text
  , storiesClickableSticker_StickerPackId :: Maybe Int
  , storiesClickableSticker_Mention :: Maybe Text
  , storiesClickableSticker_LinkObject :: Maybe BaseLink
  , storiesClickableSticker_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StoriesClickableSticker where
  parseJSON = withObject "StoriesClickableSticker" \o -> StoriesClickableSticker
    <$> o .:? "has_new_interactions"
    <*> o .:? "situational_theme_id"
    <*> o .: "clickable_area"
    <*> o .:? "subtype"
    <*> o .:? "story_id"
    <*> o .:? "place_id"
    <*> o .:? "market_item"
    <*> o .:? "question"
    <*> o .:? "audio_start_time"
    <*> o .: "id"
    <*> o .:? "color"
    <*> o .:? "poll"
    <*> o .:? "tooltip_text"
    <*> o .:? "style"
    <*> o .:? "question_button"
    <*> o .:? "post_owner_id"
    <*> o .:? "is_broadcast_notify_allowed"
    <*> o .:? "app_context"
    <*> o .:? "situational_app_url"
    <*> o .:? "app"
    <*> o .:? "audio"
    <*> o .:? "owner_id"
    <*> o .:? "sticker_id"
    <*> o .:? "hashtag"
    <*> o .: "type"
    <*> o .:? "sticker_pack_id"
    <*> o .:? "mention"
    <*> o .:? "link_object"
    <*> o .:? "post_id"
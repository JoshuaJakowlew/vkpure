module VkApi.Objects.CallbackGroupSettingsChanges where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroupVideo
import VkApi.Objects.GroupsGroupIsClosed
import VkApi.Objects.GroupsGroupAudio
import VkApi.Objects.GroupsGroupPhotos
import VkApi.Objects.CallbackGroupMarket
import VkApi.Objects.GroupsGroupWall
import VkApi.Objects.GroupsGroupFullAgeLimits

data CallbackGroupSettingsChanges = CallbackGroupSettingsChanges
  { callbackGroupSettingsChanges_EnableVideo :: Maybe GroupsGroupVideo
  , callbackGroupSettingsChanges_Access :: Maybe GroupsGroupIsClosed
  , callbackGroupSettingsChanges_PublicCategory :: Maybe Int
  , callbackGroupSettingsChanges_Title :: Maybe Text
  , callbackGroupSettingsChanges_EnableAudio :: Maybe GroupsGroupAudio
  , callbackGroupSettingsChanges_EnablePhoto :: Maybe GroupsGroupPhotos
  , callbackGroupSettingsChanges_EnableMarket :: Maybe CallbackGroupMarket
  , callbackGroupSettingsChanges_ScreenName :: Maybe Text
  , callbackGroupSettingsChanges_Description :: Maybe Text
  , callbackGroupSettingsChanges_EnableStatusDefault :: Maybe GroupsGroupWall
  , callbackGroupSettingsChanges_Website :: Maybe Text
  , callbackGroupSettingsChanges_PublicSubcategory :: Maybe Int
  , callbackGroupSettingsChanges_AgeLimits :: Maybe GroupsGroupFullAgeLimits
  } deriving (Show, Generic)

instance FromJSON CallbackGroupSettingsChanges where
  parseJSON = withObject "CallbackGroupSettingsChanges" \o -> CallbackGroupSettingsChanges
    <$> o .:? "enable_video"
    <*> o .:? "access"
    <*> o .:? "public_category"
    <*> o .:? "title"
    <*> o .:? "enable_audio"
    <*> o .:? "enable_photo"
    <*> o .:? "enable_market"
    <*> o .:? "screen_name"
    <*> o .:? "description"
    <*> o .:? "enable_status_default"
    <*> o .:? "website"
    <*> o .:? "public_subcategory"
    <*> o .:? "age_limits"
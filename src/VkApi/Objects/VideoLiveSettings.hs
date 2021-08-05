module VkApi.Objects.VideoLiveSettings where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data VideoLiveSettings = VideoLiveSettings
  { videoLiveSettings_IsEndless :: Maybe BaseBoolInt
  , videoLiveSettings_CanRewind :: Maybe BaseBoolInt
  , videoLiveSettings_MaxDuration :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON VideoLiveSettings where
  parseJSON = withObject "VideoLiveSettings" \o -> VideoLiveSettings
    <$> o .:? "is_endless"
    <*> o .:? "can_rewind"
    <*> o .:? "max_duration"
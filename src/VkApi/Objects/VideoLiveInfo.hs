module VkApi.Objects.VideoLiveInfo where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data VideoLiveInfo = VideoLiveInfo
  { videoLiveInfo_IsNotificationsBlocked :: Maybe BaseBoolInt
  , videoLiveInfo_Enabled :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON VideoLiveInfo where
  parseJSON = withObject "VideoLiveInfo" \o -> VideoLiveInfo
    <$> o .:? "is_notifications_blocked"
    <*> o .:? "enabled"
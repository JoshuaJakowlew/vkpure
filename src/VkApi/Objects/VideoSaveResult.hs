module VkApi.Objects.VideoSaveResult where

import VkApi.Objects.Utils



data VideoSaveResult = VideoSaveResult
  { videoSaveResult_Title :: Maybe Text
  , videoSaveResult_UploadUrl :: Maybe Text
  , videoSaveResult_AccessKey :: Maybe Text
  , videoSaveResult_Description :: Maybe Text
  , videoSaveResult_VideoId :: Maybe Int
  , videoSaveResult_OwnerId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON VideoSaveResult where
  parseJSON = withObject "VideoSaveResult" \o -> VideoSaveResult
    <$> o .:? "title"
    <*> o .:? "upload_url"
    <*> o .:? "access_key"
    <*> o .:? "description"
    <*> o .:? "video_id"
    <*> o .:? "owner_id"
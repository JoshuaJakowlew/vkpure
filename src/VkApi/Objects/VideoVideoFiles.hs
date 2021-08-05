module VkApi.Objects.VideoVideoFiles where

import VkApi.Objects.Utils



data VideoVideoFiles = VideoVideoFiles
  { videoVideoFiles_Mp41440 :: Maybe Text
  , videoVideoFiles_Mp42160 :: Maybe Text
  , videoVideoFiles_Mp4240 :: Maybe Text
  , videoVideoFiles_Mp4480 :: Maybe Text
  , videoVideoFiles_Mp41080 :: Maybe Text
  , videoVideoFiles_Mp4360 :: Maybe Text
  , videoVideoFiles_Mp4720 :: Maybe Text
  , videoVideoFiles_External :: Maybe Text
  , videoVideoFiles_Flv320 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON VideoVideoFiles where
  parseJSON = withObject "VideoVideoFiles" \o -> VideoVideoFiles
    <$> o .:? "mp4_1440"
    <*> o .:? "mp4_2160"
    <*> o .:? "mp4_240"
    <*> o .:? "mp4_480"
    <*> o .:? "mp4_1080"
    <*> o .:? "mp4_360"
    <*> o .:? "mp4_720"
    <*> o .:? "external"
    <*> o .:? "flv_320"
module VkApi.Objects.NewsfeedItemAudio where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemAudioAudio

data NewsfeedItemAudio = NewsfeedItemAudio
  { newsfeedItemAudio_SourceId :: Int
  , newsfeedItemAudio_Date :: Int
  , newsfeedItemAudio_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemAudio_Audio :: Maybe NewsfeedItemAudioAudio
  , newsfeedItemAudio_PostId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemAudio where
  parseJSON = withObject "NewsfeedItemAudio" \o -> NewsfeedItemAudio
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "audio"
    <*> o .:? "post_id"
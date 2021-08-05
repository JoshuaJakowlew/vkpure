module VkApi.Objects.NewsfeedItemAudioAudio where

import VkApi.Objects.Utils

import VkApi.Objects.AudioAudio

data NewsfeedItemAudioAudio = NewsfeedItemAudioAudio
  { newsfeedItemAudioAudio_Items :: Maybe [AudioAudio]
  , newsfeedItemAudioAudio_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemAudioAudio where
  parseJSON = withObject "NewsfeedItemAudioAudio" \o -> NewsfeedItemAudioAudio
    <$> o .:? "items"
    <*> o .:? "count"
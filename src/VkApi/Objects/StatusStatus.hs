module VkApi.Objects.StatusStatus where

import VkApi.Objects.Utils

import VkApi.Objects.AudioAudio

data StatusStatus = StatusStatus
  { statusStatus_Audio :: Maybe AudioAudio
  , statusStatus_Text :: Text
  } deriving (Show, Generic)

instance FromJSON StatusStatus where
  parseJSON = withObject "StatusStatus" \o -> StatusStatus
    <$> o .:? "audio"
    <*> o .: "text"
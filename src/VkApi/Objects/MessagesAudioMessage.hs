module VkApi.Objects.MessagesAudioMessage where

import VkApi.Objects.Utils



data MessagesAudioMessage = MessagesAudioMessage
  { messagesAudioMessage_TranscriptError :: Maybe Int
  , messagesAudioMessage_Duration :: Int
  , messagesAudioMessage_Waveform :: [Int]
  , messagesAudioMessage_LinkOgg :: Text
  , messagesAudioMessage_Id :: Int
  , messagesAudioMessage_AccessKey :: Maybe Text
  , messagesAudioMessage_LinkMp3 :: Text
  , messagesAudioMessage_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON MessagesAudioMessage where
  parseJSON = withObject "MessagesAudioMessage" \o -> MessagesAudioMessage
    <$> o .:? "transcript_error"
    <*> o .: "duration"
    <*> o .: "waveform"
    <*> o .: "link_ogg"
    <*> o .: "id"
    <*> o .:? "access_key"
    <*> o .: "link_mp3"
    <*> o .: "owner_id"
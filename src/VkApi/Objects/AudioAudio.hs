module VkApi.Objects.AudioAudio where

import VkApi.Objects.Utils



data AudioAudio = AudioAudio
  { audioAudio_GenreId :: Maybe Int
  , audioAudio_Duration :: Int
  , audioAudio_Title :: Text
  , audioAudio_Id :: Int
  , audioAudio_AccessKey :: Maybe Text
  , audioAudio_Date :: Maybe Int
  , audioAudio_Artist :: Text
  , audioAudio_Performer :: Maybe Text
  , audioAudio_Url :: Maybe Text
  , audioAudio_OwnerId :: Int
  , audioAudio_AlbumId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AudioAudio where
  parseJSON = withObject "AudioAudio" \o -> AudioAudio
    <$> o .:? "genre_id"
    <*> o .: "duration"
    <*> o .: "title"
    <*> o .: "id"
    <*> o .:? "access_key"
    <*> o .:? "date"
    <*> o .: "artist"
    <*> o .:? "performer"
    <*> o .:? "url"
    <*> o .: "owner_id"
    <*> o .:? "album_id"
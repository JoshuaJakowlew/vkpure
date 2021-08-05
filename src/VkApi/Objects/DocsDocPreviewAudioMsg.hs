module VkApi.Objects.DocsDocPreviewAudioMsg where

import VkApi.Objects.Utils



data DocsDocPreviewAudioMsg = DocsDocPreviewAudioMsg
  { docsDocPreviewAudioMsg_Duration :: Int
  , docsDocPreviewAudioMsg_Waveform :: [Int]
  , docsDocPreviewAudioMsg_LinkOgg :: Text
  , docsDocPreviewAudioMsg_LinkMp3 :: Text
  } deriving (Show, Generic)

instance FromJSON DocsDocPreviewAudioMsg where
  parseJSON = withObject "DocsDocPreviewAudioMsg" \o -> DocsDocPreviewAudioMsg
    <$> o .: "duration"
    <*> o .: "waveform"
    <*> o .: "link_ogg"
    <*> o .: "link_mp3"
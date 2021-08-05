module VkApi.Objects.DocsDocPreview where

import VkApi.Objects.Utils

import VkApi.Objects.DocsDocPreviewGraffiti
import VkApi.Objects.DocsDocPreviewPhoto
import VkApi.Objects.DocsDocPreviewVideo
import VkApi.Objects.DocsDocPreviewAudioMsg

data DocsDocPreview = DocsDocPreview
  { docsDocPreview_Graffiti :: Maybe DocsDocPreviewGraffiti
  , docsDocPreview_Photo :: Maybe DocsDocPreviewPhoto
  , docsDocPreview_Video :: Maybe DocsDocPreviewVideo
  , docsDocPreview_AudioMsg :: Maybe DocsDocPreviewAudioMsg
  } deriving (Show, Generic)

instance FromJSON DocsDocPreview where
  parseJSON = withObject "DocsDocPreview" \o -> DocsDocPreview
    <$> o .:? "graffiti"
    <*> o .:? "photo"
    <*> o .:? "video"
    <*> o .:? "audio_msg"
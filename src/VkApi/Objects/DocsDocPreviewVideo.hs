module VkApi.Objects.DocsDocPreviewVideo where

import VkApi.Objects.Utils



data DocsDocPreviewVideo = DocsDocPreviewVideo
  { docsDocPreviewVideo_Height :: Int
  , docsDocPreviewVideo_FileSize :: Int
  , docsDocPreviewVideo_Width :: Int
  , docsDocPreviewVideo_Src :: Text
  } deriving (Show, Generic)

instance FromJSON DocsDocPreviewVideo where
  parseJSON = withObject "DocsDocPreviewVideo" \o -> DocsDocPreviewVideo
    <$> o .: "height"
    <*> o .: "file_size"
    <*> o .: "width"
    <*> o .: "src"
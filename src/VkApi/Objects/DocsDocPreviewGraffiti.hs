module VkApi.Objects.DocsDocPreviewGraffiti where

import VkApi.Objects.Utils



data DocsDocPreviewGraffiti = DocsDocPreviewGraffiti
  { docsDocPreviewGraffiti_Height :: Int
  , docsDocPreviewGraffiti_Width :: Int
  , docsDocPreviewGraffiti_Src :: Text
  } deriving (Show, Generic)

instance FromJSON DocsDocPreviewGraffiti where
  parseJSON = withObject "DocsDocPreviewGraffiti" \o -> DocsDocPreviewGraffiti
    <$> o .: "height"
    <*> o .: "width"
    <*> o .: "src"
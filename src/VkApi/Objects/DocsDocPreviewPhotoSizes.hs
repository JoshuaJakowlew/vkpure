module VkApi.Objects.DocsDocPreviewPhotoSizes where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoSizesType

data DocsDocPreviewPhotoSizes = DocsDocPreviewPhotoSizes
  { docsDocPreviewPhotoSizes_Height :: Int
  , docsDocPreviewPhotoSizes_Width :: Int
  , docsDocPreviewPhotoSizes_Src :: Text
  , docsDocPreviewPhotoSizes_Type :: PhotosPhotoSizesType
  } deriving (Show, Generic)

instance FromJSON DocsDocPreviewPhotoSizes where
  parseJSON = withObject "DocsDocPreviewPhotoSizes" \o -> DocsDocPreviewPhotoSizes
    <$> o .: "height"
    <*> o .: "width"
    <*> o .: "src"
    <*> o .: "type"
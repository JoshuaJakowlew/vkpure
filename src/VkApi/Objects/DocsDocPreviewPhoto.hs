module VkApi.Objects.DocsDocPreviewPhoto where

import VkApi.Objects.Utils

import VkApi.Objects.DocsDocPreviewPhotoSizes

data DocsDocPreviewPhoto = DocsDocPreviewPhoto
  { docsDocPreviewPhoto_Sizes :: Maybe [DocsDocPreviewPhotoSizes]
  } deriving (Show, Generic)

instance FromJSON DocsDocPreviewPhoto where
  parseJSON = withObject "DocsDocPreviewPhoto" \o -> DocsDocPreviewPhoto
    <$> o .:? "sizes"
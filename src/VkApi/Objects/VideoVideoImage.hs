module VkApi.Objects.VideoVideoImage where

import VkApi.Objects.Utils

import VkApi.Objects.BasePropertyExists

data VideoVideoImage = VideoVideoImage
  { videoVideoImage_Height :: Int
  , videoVideoImage_Width :: Int
  , videoVideoImage_Id :: Maybe Text
  , videoVideoImage_Url :: Text
  , videoVideoImage_WithPadding :: Maybe BasePropertyExists
  } deriving (Show, Generic)

instance FromJSON VideoVideoImage where
  parseJSON = withObject "VideoVideoImage" \o -> VideoVideoImage
    <$> o .: "height"
    <*> o .: "width"
    <*> o .:? "id"
    <*> o .: "url"
    <*> o .:? "with_padding"
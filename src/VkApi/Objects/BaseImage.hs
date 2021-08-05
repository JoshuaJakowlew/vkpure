module VkApi.Objects.BaseImage where

import VkApi.Objects.Utils



data BaseImage = BaseImage
  { baseImage_Height :: Int
  , baseImage_Width :: Int
  , baseImage_Id :: Maybe Text
  , baseImage_Url :: Text
  } deriving (Show, Generic)

instance FromJSON BaseImage where
  parseJSON = withObject "BaseImage" \o -> BaseImage
    <$> o .: "height"
    <*> o .: "width"
    <*> o .:? "id"
    <*> o .: "url"
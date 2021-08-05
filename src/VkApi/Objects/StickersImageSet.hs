module VkApi.Objects.StickersImageSet where

import VkApi.Objects.Utils



data StickersImageSet = StickersImageSet
  { stickersImageSet_BaseUrl :: Text
  , stickersImageSet_Version :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StickersImageSet where
  parseJSON = withObject "StickersImageSet" \o -> StickersImageSet
    <$> o .: "base_url"
    <*> o .:? "version"
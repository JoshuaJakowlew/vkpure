module VkApi.Objects.GroupsCover where

import VkApi.Objects.Utils

import VkApi.Objects.BaseImage
import VkApi.Objects.BaseBoolInt

data GroupsCover = GroupsCover
  { groupsCover_Images :: Maybe [BaseImage]
  , groupsCover_Enabled :: BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsCover where
  parseJSON = withObject "GroupsCover" \o -> GroupsCover
    <$> o .:? "images"
    <*> o .: "enabled"
module VkApi.Objects.WallPostSource where

import VkApi.Objects.Utils

import VkApi.Objects.WallPostSourceType

data WallPostSource = WallPostSource
  { wallPostSource_Platform :: Maybe Text
  , wallPostSource_Data :: Maybe Text
  , wallPostSource_Url :: Maybe Text
  , wallPostSource_Type :: Maybe WallPostSourceType
  } deriving (Show, Generic)

instance FromJSON WallPostSource where
  parseJSON = withObject "WallPostSource" \o -> WallPostSource
    <$> o .:? "platform"
    <*> o .:? "data"
    <*> o .:? "url"
    <*> o .:? "type"
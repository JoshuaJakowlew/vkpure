module VkApi.Objects.BaseCommentsInfo where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallpostCommentsDonut
import VkApi.Objects.BaseBoolInt

data BaseCommentsInfo = BaseCommentsInfo
  { baseCommentsInfo_Donut :: Maybe WallWallpostCommentsDonut
  , baseCommentsInfo_CanPost :: Maybe BaseBoolInt
  , baseCommentsInfo_GroupsCanPost :: Maybe Bool
  , baseCommentsInfo_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseCommentsInfo where
  parseJSON = withObject "BaseCommentsInfo" \o -> BaseCommentsInfo
    <$> o .:? "donut"
    <*> o .:? "can_post"
    <*> o .:? "groups_can_post"
    <*> o .:? "count"
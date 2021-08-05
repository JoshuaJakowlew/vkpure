module VkApi.Objects.WallWallpostCommentsDonut where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallpostCommentsDonutPlaceholder

data WallWallpostCommentsDonut = WallWallpostCommentsDonut
  { wallWallpostCommentsDonut_Placeholder :: Maybe WallWallpostCommentsDonutPlaceholder
  } deriving (Show, Generic)

instance FromJSON WallWallpostCommentsDonut where
  parseJSON = withObject "WallWallpostCommentsDonut" \o -> WallWallpostCommentsDonut
    <$> o .:? "placeholder"
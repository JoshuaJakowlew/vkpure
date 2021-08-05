module VkApi.Objects.WallWallpostCommentsDonutPlaceholder where

import VkApi.Objects.Utils



data WallWallpostCommentsDonutPlaceholder = WallWallpostCommentsDonutPlaceholder
  { wallWallpostCommentsDonutPlaceholder_Text :: Text
  } deriving (Show, Generic)

instance FromJSON WallWallpostCommentsDonutPlaceholder where
  parseJSON = withObject "WallWallpostCommentsDonutPlaceholder" \o -> WallWallpostCommentsDonutPlaceholder
    <$> o .: "text"
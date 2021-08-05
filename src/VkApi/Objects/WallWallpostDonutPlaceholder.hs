module VkApi.Objects.WallWallpostDonutPlaceholder where

import VkApi.Objects.Utils



data WallWallpostDonutPlaceholder = WallWallpostDonutPlaceholder
  { wallWallpostDonutPlaceholder_Text :: Text
  } deriving (Show, Generic)

instance FromJSON WallWallpostDonutPlaceholder where
  parseJSON = withObject "WallWallpostDonutPlaceholder" \o -> WallWallpostDonutPlaceholder
    <$> o .: "text"
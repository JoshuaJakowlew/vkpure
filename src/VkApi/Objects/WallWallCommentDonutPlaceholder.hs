module VkApi.Objects.WallWallCommentDonutPlaceholder where

import VkApi.Objects.Utils



data WallWallCommentDonutPlaceholder = WallWallCommentDonutPlaceholder
  { wallWallCommentDonutPlaceholder_Text :: Text
  } deriving (Show, Generic)

instance FromJSON WallWallCommentDonutPlaceholder where
  parseJSON = withObject "WallWallCommentDonutPlaceholder" \o -> WallWallCommentDonutPlaceholder
    <$> o .: "text"
module VkApi.Objects.WallWallCommentDonut where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallCommentDonutPlaceholder

data WallWallCommentDonut = WallWallCommentDonut
  { wallWallCommentDonut_Placeholder :: Maybe WallWallCommentDonutPlaceholder
  , wallWallCommentDonut_IsDon :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON WallWallCommentDonut where
  parseJSON = withObject "WallWallCommentDonut" \o -> WallWallCommentDonut
    <$> o .:? "placeholder"
    <*> o .:? "is_don"
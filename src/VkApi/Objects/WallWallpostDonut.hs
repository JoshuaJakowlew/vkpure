module VkApi.Objects.WallWallpostDonut where

import VkApi.Objects.Utils

import VkApi.Objects.WallWallpostDonutPlaceholder

data WallWallpostDonut = WallWallpostDonut
  { wallWallpostDonut_IsDonut :: Bool
  , wallWallpostDonut_Placeholder :: Maybe WallWallpostDonutPlaceholder
  , wallWallpostDonut_CanPublishFreeCopy :: Maybe Bool
  , wallWallpostDonut_EditMode :: Maybe Text
  , wallWallpostDonut_PaidDuration :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallWallpostDonut where
  parseJSON = withObject "WallWallpostDonut" \o -> WallWallpostDonut
    <$> o .: "is_donut"
    <*> o .:? "placeholder"
    <*> o .:? "can_publish_free_copy"
    <*> o .:? "edit_mode"
    <*> o .:? "paid_duration"
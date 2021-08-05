module VkApi.Objects.WallViews where

import VkApi.Objects.Utils



data WallViews = WallViews
  { wallViews_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallViews where
  parseJSON = withObject "WallViews" \o -> WallViews
    <$> o .:? "count"
module VkApi.Objects.StoriesClickableArea where

import VkApi.Objects.Utils



data StoriesClickableArea = StoriesClickableArea
  { storiesClickableArea_Y :: Maybe Int
  , storiesClickableArea_X :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StoriesClickableArea where
  parseJSON = withObject "StoriesClickableArea" \o -> StoriesClickableArea
    <$> o .:? "y"
    <*> o .:? "x"
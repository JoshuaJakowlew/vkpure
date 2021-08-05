module VkApi.Objects.StoriesStoryStatsState where

import VkApi.Objects.Utils



data StoriesStoryStatsState = StoriesStoryStatsStateOn | StoriesStoryStatsStateOff | StoriesStoryStatsStateHidden
  deriving (Show, Generic)

instance FromJSON StoriesStoryStatsState where
  parseJSON = withText "StoriesStoryStatsState" \ t -> case t of 
    "on" -> pure StoriesStoryStatsStateOn
    "off" -> pure StoriesStoryStatsStateOff
    "hidden" -> pure StoriesStoryStatsStateHidden
    _ -> fail "StoriesStoryStatsState: doesnt match case"

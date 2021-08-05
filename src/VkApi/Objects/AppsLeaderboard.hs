module VkApi.Objects.AppsLeaderboard where

import VkApi.Objects.Utils



data AppsLeaderboard = AppsLeaderboard
  { appsLeaderboard_Points :: Maybe Int
  , appsLeaderboard_UserId :: Int
  , appsLeaderboard_Level :: Maybe Int
  , appsLeaderboard_Score :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AppsLeaderboard where
  parseJSON = withObject "AppsLeaderboard" \o -> AppsLeaderboard
    <$> o .:? "points"
    <*> o .: "user_id"
    <*> o .:? "level"
    <*> o .:? "score"
module VkApi.Objects.StatsActivity where

import VkApi.Objects.Utils



data StatsActivity = StatsActivity
  { statsActivity_Subscribed :: Maybe Int
  , statsActivity_Likes :: Maybe Int
  , statsActivity_Unsubscribed :: Maybe Int
  , statsActivity_Copies :: Maybe Int
  , statsActivity_Comments :: Maybe Int
  , statsActivity_Hidden :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsActivity where
  parseJSON = withObject "StatsActivity" \o -> StatsActivity
    <$> o .:? "subscribed"
    <*> o .:? "likes"
    <*> o .:? "unsubscribed"
    <*> o .:? "copies"
    <*> o .:? "comments"
    <*> o .:? "hidden"
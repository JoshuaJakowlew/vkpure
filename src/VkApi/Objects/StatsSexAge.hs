module VkApi.Objects.StatsSexAge where

import VkApi.Objects.Utils



data StatsSexAge = StatsSexAge
  { statsSexAge_ReachSubscribers :: Maybe Int
  , statsSexAge_Reach :: Maybe Int
  , statsSexAge_Value :: Text
  , statsSexAge_Count :: Maybe Int
  , statsSexAge_CountSubscribers :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON StatsSexAge where
  parseJSON = withObject "StatsSexAge" \o -> StatsSexAge
    <$> o .:? "reach_subscribers"
    <*> o .:? "reach"
    <*> o .: "value"
    <*> o .:? "count"
    <*> o .:? "count_subscribers"
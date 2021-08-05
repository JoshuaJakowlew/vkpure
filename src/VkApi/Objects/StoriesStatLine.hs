module VkApi.Objects.StoriesStatLine where

import VkApi.Objects.Utils



data StoriesStatLine = StoriesStatLine
  { storiesStatLine_IsUnavailable :: Maybe Bool
  , storiesStatLine_Counter :: Maybe Int
  , storiesStatLine_Name :: Text
  } deriving (Show, Generic)

instance FromJSON StoriesStatLine where
  parseJSON = withObject "StoriesStatLine" \o -> StoriesStatLine
    <$> o .:? "is_unavailable"
    <*> o .:? "counter"
    <*> o .: "name"
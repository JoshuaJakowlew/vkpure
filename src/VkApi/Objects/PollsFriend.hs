module VkApi.Objects.PollsFriend where

import VkApi.Objects.Utils



data PollsFriend = PollsFriend
  { pollsFriend_Id :: Int
  } deriving (Show, Generic)

instance FromJSON PollsFriend where
  parseJSON = withObject "PollsFriend" \o -> PollsFriend
    <$> o .: "id"
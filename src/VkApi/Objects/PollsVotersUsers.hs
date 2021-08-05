module VkApi.Objects.PollsVotersUsers where

import VkApi.Objects.Utils



data PollsVotersUsers = PollsVotersUsers
  { pollsVotersUsers_Items :: Maybe [Int]
  , pollsVotersUsers_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON PollsVotersUsers where
  parseJSON = withObject "PollsVotersUsers" \o -> PollsVotersUsers
    <$> o .:? "items"
    <*> o .:? "count"
module VkApi.Objects.PollsVoters where

import VkApi.Objects.Utils

import VkApi.Objects.PollsVotersUsers

data PollsVoters = PollsVoters
  { pollsVoters_AnswerId :: Maybe Int
  , pollsVoters_Users :: Maybe PollsVotersUsers
  } deriving (Show, Generic)

instance FromJSON PollsVoters where
  parseJSON = withObject "PollsVoters" \o -> PollsVoters
    <$> o .:? "answer_id"
    <*> o .:? "users"
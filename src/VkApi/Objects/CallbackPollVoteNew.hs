module VkApi.Objects.CallbackPollVoteNew where

import VkApi.Objects.Utils



data CallbackPollVoteNew = CallbackPollVoteNew
  { callbackPollVoteNew_UserId :: Int
  , callbackPollVoteNew_PollId :: Int
  , callbackPollVoteNew_OptionId :: Int
  , callbackPollVoteNew_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackPollVoteNew where
  parseJSON = withObject "CallbackPollVoteNew" \o -> CallbackPollVoteNew
    <$> o .: "user_id"
    <*> o .: "poll_id"
    <*> o .: "option_id"
    <*> o .: "owner_id"
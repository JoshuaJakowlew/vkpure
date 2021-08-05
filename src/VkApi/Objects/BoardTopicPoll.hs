module VkApi.Objects.BoardTopicPoll where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.PollsAnswer

data BoardTopicPoll = BoardTopicPoll
  { boardTopicPoll_AnswerId :: Int
  , boardTopicPoll_Question :: Text
  , boardTopicPoll_PollId :: Int
  , boardTopicPoll_IsClosed :: Maybe BaseBoolInt
  , boardTopicPoll_Answers :: [PollsAnswer]
  , boardTopicPoll_OwnerId :: Int
  , boardTopicPoll_Votes :: Int
  , boardTopicPoll_Created :: Int
  } deriving (Show, Generic)

instance FromJSON BoardTopicPoll where
  parseJSON = withObject "BoardTopicPoll" \o -> BoardTopicPoll
    <$> o .: "answer_id"
    <*> o .: "question"
    <*> o .: "poll_id"
    <*> o .:? "is_closed"
    <*> o .: "answers"
    <*> o .: "owner_id"
    <*> o .: "votes"
    <*> o .: "created"
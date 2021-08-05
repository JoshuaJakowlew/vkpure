module VkApi.Objects.PollsPoll where

import VkApi.Objects.Utils

import VkApi.Objects.PollsFriend
import VkApi.Objects.PollsBackground
import VkApi.Objects.PollsPollAnonymous
import VkApi.Objects.PollsAnswer

data PollsPoll = PollsPoll
  { pollsPoll_CanEdit :: Bool
  , pollsPoll_IsBoard :: Bool
  , pollsPoll_EndDate :: Int
  , pollsPoll_Friends :: Maybe [PollsFriend]
  , pollsPoll_AnswerId :: Maybe Int
  , pollsPoll_Question :: Text
  , pollsPoll_CanShare :: Bool
  , pollsPoll_EmbedHash :: Maybe Text
  , pollsPoll_Background :: Maybe PollsBackground
  , pollsPoll_Anonymous :: PollsPollAnonymous
  , pollsPoll_Multiple :: Bool
  , pollsPoll_DisableUnvote :: Bool
  , pollsPoll_CanReport :: Bool
  , pollsPoll_Id :: Int
  , pollsPoll_Closed :: Bool
  , pollsPoll_AuthorId :: Maybe Int
  , pollsPoll_Answers :: [PollsAnswer]
  , pollsPoll_Photo :: Maybe PollsBackground
  , pollsPoll_CanVote :: Bool
  , pollsPoll_OwnerId :: Int
  , pollsPoll_Votes :: Int
  , pollsPoll_Created :: Int
  , pollsPoll_AnswerIds :: Maybe [Int]
  } deriving (Show, Generic)

instance FromJSON PollsPoll where
  parseJSON = withObject "PollsPoll" \o -> PollsPoll
    <$> o .: "can_edit"
    <*> o .: "is_board"
    <*> o .: "end_date"
    <*> o .:? "friends"
    <*> o .:? "answer_id"
    <*> o .: "question"
    <*> o .: "can_share"
    <*> o .:? "embed_hash"
    <*> o .:? "background"
    <*> o .: "anonymous"
    <*> o .: "multiple"
    <*> o .: "disable_unvote"
    <*> o .: "can_report"
    <*> o .: "id"
    <*> o .: "closed"
    <*> o .:? "author_id"
    <*> o .: "answers"
    <*> o .:? "photo"
    <*> o .: "can_vote"
    <*> o .: "owner_id"
    <*> o .: "votes"
    <*> o .: "created"
    <*> o .:? "answer_ids"
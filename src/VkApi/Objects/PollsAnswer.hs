module VkApi.Objects.PollsAnswer where

import VkApi.Objects.Utils



data PollsAnswer = PollsAnswer
  { pollsAnswer_Id :: Int
  , pollsAnswer_Votes :: Int
  , pollsAnswer_Text :: Text
  , pollsAnswer_Rate :: Double
  } deriving (Show, Generic)

instance FromJSON PollsAnswer where
  parseJSON = withObject "PollsAnswer" \o -> PollsAnswer
    <$> o .: "id"
    <*> o .: "votes"
    <*> o .: "text"
    <*> o .: "rate"
module VkApi.Objects.NewsfeedItemWallpostFeedback where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedItemWallpostFeedbackAnswer
import VkApi.Objects.NewsfeedItemWallpostFeedbackType

data NewsfeedItemWallpostFeedback = NewsfeedItemWallpostFeedback
  { newsfeedItemWallpostFeedback_Gratitude :: Maybe Text
  , newsfeedItemWallpostFeedback_Question :: Text
  , newsfeedItemWallpostFeedback_Answers :: Maybe [NewsfeedItemWallpostFeedbackAnswer]
  , newsfeedItemWallpostFeedback_StarsCount :: Maybe Int
  , newsfeedItemWallpostFeedback_Type :: NewsfeedItemWallpostFeedbackType
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemWallpostFeedback where
  parseJSON = withObject "NewsfeedItemWallpostFeedback" \o -> NewsfeedItemWallpostFeedback
    <$> o .:? "gratitude"
    <*> o .: "question"
    <*> o .:? "answers"
    <*> o .:? "stars_count"
    <*> o .: "type"
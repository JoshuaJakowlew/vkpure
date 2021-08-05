module VkApi.Objects.NewsfeedItemWallpostFeedbackAnswer where

import VkApi.Objects.Utils



data NewsfeedItemWallpostFeedbackAnswer = NewsfeedItemWallpostFeedbackAnswer
  { newsfeedItemWallpostFeedbackAnswer_Title :: Text
  , newsfeedItemWallpostFeedbackAnswer_Id :: Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemWallpostFeedbackAnswer where
  parseJSON = withObject "NewsfeedItemWallpostFeedbackAnswer" \o -> NewsfeedItemWallpostFeedbackAnswer
    <$> o .: "title"
    <*> o .: "id"
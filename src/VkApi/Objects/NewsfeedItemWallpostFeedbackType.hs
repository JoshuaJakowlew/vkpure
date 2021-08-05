module VkApi.Objects.NewsfeedItemWallpostFeedbackType where

import VkApi.Objects.Utils



data NewsfeedItemWallpostFeedbackType = NewsfeedItemWallpostFeedbackTypeButtons | NewsfeedItemWallpostFeedbackTypeStars
  deriving (Show, Generic)

instance FromJSON NewsfeedItemWallpostFeedbackType where
  parseJSON = withText "NewsfeedItemWallpostFeedbackType" \ t -> case t of 
    "buttons" -> pure NewsfeedItemWallpostFeedbackTypeButtons
    "stars" -> pure NewsfeedItemWallpostFeedbackTypeStars
    _ -> fail "NewsfeedItemWallpostFeedbackType: doesnt match case"

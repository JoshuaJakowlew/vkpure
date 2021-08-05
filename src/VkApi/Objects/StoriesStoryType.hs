module VkApi.Objects.StoriesStoryType where

import VkApi.Objects.Utils



data StoriesStoryType = StoriesStoryTypePhoto | StoriesStoryTypeVideo | StoriesStoryTypeLiveActive | StoriesStoryTypeLiveFinished | StoriesStoryTypeBirthdayInvite
  deriving (Show, Generic)

instance FromJSON StoriesStoryType where
  parseJSON = withText "StoriesStoryType" \ t -> case t of 
    "photo" -> pure StoriesStoryTypePhoto
    "video" -> pure StoriesStoryTypeVideo
    "live_active" -> pure StoriesStoryTypeLiveActive
    "live_finished" -> pure StoriesStoryTypeLiveFinished
    "birthday_invite" -> pure StoriesStoryTypeBirthdayInvite
    _ -> fail "StoriesStoryType: doesnt match case"

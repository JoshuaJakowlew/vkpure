module VkApi.Objects.NewsfeedCommentsFilters where

import VkApi.Objects.Utils



data NewsfeedCommentsFilters = NewsfeedCommentsFiltersPost | NewsfeedCommentsFiltersPhoto | NewsfeedCommentsFiltersVideo | NewsfeedCommentsFiltersTopic | NewsfeedCommentsFiltersNote
  deriving (Show, Generic)

instance FromJSON NewsfeedCommentsFilters where
  parseJSON = withText "NewsfeedCommentsFilters" \ t -> case t of 
    "post" -> pure NewsfeedCommentsFiltersPost
    "photo" -> pure NewsfeedCommentsFiltersPhoto
    "video" -> pure NewsfeedCommentsFiltersVideo
    "topic" -> pure NewsfeedCommentsFiltersTopic
    "note" -> pure NewsfeedCommentsFiltersNote
    _ -> fail "NewsfeedCommentsFilters: doesnt match case"

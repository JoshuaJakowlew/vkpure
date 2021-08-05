module VkApi.Objects.NewsfeedFilters where

import VkApi.Objects.Utils



data NewsfeedFilters = NewsfeedFiltersPost | NewsfeedFiltersPhoto | NewsfeedFiltersPhotoTag | NewsfeedFiltersWallPhoto | NewsfeedFiltersFriend | NewsfeedFiltersNote | NewsfeedFiltersAudio | NewsfeedFiltersVideo | NewsfeedFiltersAudioPlaylist | NewsfeedFiltersClip
  deriving (Show, Generic)

instance FromJSON NewsfeedFilters where
  parseJSON = withText "NewsfeedFilters" \ t -> case t of 
    "post" -> pure NewsfeedFiltersPost
    "photo" -> pure NewsfeedFiltersPhoto
    "photo_tag" -> pure NewsfeedFiltersPhotoTag
    "wall_photo" -> pure NewsfeedFiltersWallPhoto
    "friend" -> pure NewsfeedFiltersFriend
    "note" -> pure NewsfeedFiltersNote
    "audio" -> pure NewsfeedFiltersAudio
    "video" -> pure NewsfeedFiltersVideo
    "audio_playlist" -> pure NewsfeedFiltersAudioPlaylist
    "clip" -> pure NewsfeedFiltersClip
    _ -> fail "NewsfeedFilters: doesnt match case"

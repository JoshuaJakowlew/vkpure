module VkApi.Objects.NewsfeedNewsfeedItemType where

import VkApi.Objects.Utils



data NewsfeedNewsfeedItemType = NewsfeedNewsfeedItemTypePost | NewsfeedNewsfeedItemTypePhoto | NewsfeedNewsfeedItemTypePhotoTag | NewsfeedNewsfeedItemTypeWallPhoto | NewsfeedNewsfeedItemTypeFriend | NewsfeedNewsfeedItemTypeAudio | NewsfeedNewsfeedItemTypeVideo | NewsfeedNewsfeedItemTypeTopic | NewsfeedNewsfeedItemTypeDigest | NewsfeedNewsfeedItemTypeStories
  deriving (Show, Generic)

instance FromJSON NewsfeedNewsfeedItemType where
  parseJSON = withText "NewsfeedNewsfeedItemType" \ t -> case t of 
    "post" -> pure NewsfeedNewsfeedItemTypePost
    "photo" -> pure NewsfeedNewsfeedItemTypePhoto
    "photo_tag" -> pure NewsfeedNewsfeedItemTypePhotoTag
    "wall_photo" -> pure NewsfeedNewsfeedItemTypeWallPhoto
    "friend" -> pure NewsfeedNewsfeedItemTypeFriend
    "audio" -> pure NewsfeedNewsfeedItemTypeAudio
    "video" -> pure NewsfeedNewsfeedItemTypeVideo
    "topic" -> pure NewsfeedNewsfeedItemTypeTopic
    "digest" -> pure NewsfeedNewsfeedItemTypeDigest
    "stories" -> pure NewsfeedNewsfeedItemTypeStories
    _ -> fail "NewsfeedNewsfeedItemType: doesnt match case"

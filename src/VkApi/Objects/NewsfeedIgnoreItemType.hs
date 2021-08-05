module VkApi.Objects.NewsfeedIgnoreItemType where

import VkApi.Objects.Utils



data NewsfeedIgnoreItemType = NewsfeedIgnoreItemTypeWall | NewsfeedIgnoreItemTypeTag | NewsfeedIgnoreItemTypeProfilephoto | NewsfeedIgnoreItemTypeVideo | NewsfeedIgnoreItemTypePhoto | NewsfeedIgnoreItemTypeAudio
  deriving (Show, Generic)

instance FromJSON NewsfeedIgnoreItemType where
  parseJSON = withText "NewsfeedIgnoreItemType" \ t -> case t of 
    "wall" -> pure NewsfeedIgnoreItemTypeWall
    "tag" -> pure NewsfeedIgnoreItemTypeTag
    "profilephoto" -> pure NewsfeedIgnoreItemTypeProfilephoto
    "video" -> pure NewsfeedIgnoreItemTypeVideo
    "photo" -> pure NewsfeedIgnoreItemTypePhoto
    "audio" -> pure NewsfeedIgnoreItemTypeAudio
    _ -> fail "NewsfeedIgnoreItemType: doesnt match case"

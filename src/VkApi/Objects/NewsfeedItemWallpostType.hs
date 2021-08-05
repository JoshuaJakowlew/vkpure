module VkApi.Objects.NewsfeedItemWallpostType where

import VkApi.Objects.Utils



data NewsfeedItemWallpostType = NewsfeedItemWallpostTypePost | NewsfeedItemWallpostTypeCopy | NewsfeedItemWallpostTypeReply
  deriving (Show, Generic)

instance FromJSON NewsfeedItemWallpostType where
  parseJSON = withText "NewsfeedItemWallpostType" \ t -> case t of 
    "post" -> pure NewsfeedItemWallpostTypePost
    "copy" -> pure NewsfeedItemWallpostTypeCopy
    "reply" -> pure NewsfeedItemWallpostTypeReply
    _ -> fail "NewsfeedItemWallpostType: doesnt match case"

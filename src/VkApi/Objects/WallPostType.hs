module VkApi.Objects.WallPostType where

import VkApi.Objects.Utils



data WallPostType = WallPostTypePost | WallPostTypeCopy | WallPostTypeReply | WallPostTypePostpone | WallPostTypeSuggest
  deriving (Show, Generic)

instance FromJSON WallPostType where
  parseJSON = withText "WallPostType" \ t -> case t of 
    "post" -> pure WallPostTypePost
    "copy" -> pure WallPostTypeCopy
    "reply" -> pure WallPostTypeReply
    "postpone" -> pure WallPostTypePostpone
    "suggest" -> pure WallPostTypeSuggest
    _ -> fail "WallPostType: doesnt match case"

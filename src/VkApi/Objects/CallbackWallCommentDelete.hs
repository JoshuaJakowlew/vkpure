module VkApi.Objects.CallbackWallCommentDelete where

import VkApi.Objects.Utils



data CallbackWallCommentDelete = CallbackWallCommentDelete
  { callbackWallCommentDelete_UserId :: Int
  , callbackWallCommentDelete_Id :: Int
  , callbackWallCommentDelete_OwnerId :: Int
  , callbackWallCommentDelete_PostId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackWallCommentDelete where
  parseJSON = withObject "CallbackWallCommentDelete" \o -> CallbackWallCommentDelete
    <$> o .: "user_id"
    <*> o .: "id"
    <*> o .: "owner_id"
    <*> o .: "post_id"
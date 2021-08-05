module VkApi.Objects.CallbackVideoCommentDelete where

import VkApi.Objects.Utils



data CallbackVideoCommentDelete = CallbackVideoCommentDelete
  { callbackVideoCommentDelete_UserId :: Int
  , callbackVideoCommentDelete_Id :: Int
  , callbackVideoCommentDelete_VideoId :: Int
  , callbackVideoCommentDelete_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackVideoCommentDelete where
  parseJSON = withObject "CallbackVideoCommentDelete" \o -> CallbackVideoCommentDelete
    <$> o .: "user_id"
    <*> o .: "id"
    <*> o .: "video_id"
    <*> o .: "owner_id"
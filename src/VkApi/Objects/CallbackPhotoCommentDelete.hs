module VkApi.Objects.CallbackPhotoCommentDelete where

import VkApi.Objects.Utils



data CallbackPhotoCommentDelete = CallbackPhotoCommentDelete
  { callbackPhotoCommentDelete_PhotoId :: Int
  , callbackPhotoCommentDelete_UserId :: Int
  , callbackPhotoCommentDelete_Id :: Int
  , callbackPhotoCommentDelete_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackPhotoCommentDelete where
  parseJSON = withObject "CallbackPhotoCommentDelete" \o -> CallbackPhotoCommentDelete
    <$> o .: "photo_id"
    <*> o .: "user_id"
    <*> o .: "id"
    <*> o .: "owner_id"
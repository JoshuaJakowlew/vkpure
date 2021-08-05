module VkApi.Objects.CallbackPhotoComment where

import VkApi.Objects.Utils



data CallbackPhotoComment = CallbackPhotoComment
  { callbackPhotoComment_FromId :: Int
  , callbackPhotoComment_PhotoOwnerId :: Int
  , callbackPhotoComment_Id :: Int
  , callbackPhotoComment_Date :: Int
  , callbackPhotoComment_Text :: Text
  } deriving (Show, Generic)

instance FromJSON CallbackPhotoComment where
  parseJSON = withObject "CallbackPhotoComment" \o -> CallbackPhotoComment
    <$> o .: "from_id"
    <*> o .: "photo_owner_id"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .: "text"
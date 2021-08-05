module VkApi.Objects.CallbackGroupChangePhoto where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhoto

data CallbackGroupChangePhoto = CallbackGroupChangePhoto
  { callbackGroupChangePhoto_UserId :: Int
  , callbackGroupChangePhoto_Photo :: PhotosPhoto
  } deriving (Show, Generic)

instance FromJSON CallbackGroupChangePhoto where
  parseJSON = withObject "CallbackGroupChangePhoto" \o -> CallbackGroupChangePhoto
    <$> o .: "user_id"
    <*> o .: "photo"
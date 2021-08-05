module VkApi.Objects.NewsfeedItemPhotoPhotos where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedPhoto

data NewsfeedItemPhotoPhotos = NewsfeedItemPhotoPhotos
  { newsfeedItemPhotoPhotos_Items :: Maybe [NewsfeedNewsfeedPhoto]
  , newsfeedItemPhotoPhotos_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPhotoPhotos where
  parseJSON = withObject "NewsfeedItemPhotoPhotos" \o -> NewsfeedItemPhotoPhotos
    <$> o .:? "items"
    <*> o .:? "count"
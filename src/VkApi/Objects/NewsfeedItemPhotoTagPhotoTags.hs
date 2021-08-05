module VkApi.Objects.NewsfeedItemPhotoTagPhotoTags where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedPhoto

data NewsfeedItemPhotoTagPhotoTags = NewsfeedItemPhotoTagPhotoTags
  { newsfeedItemPhotoTagPhotoTags_Items :: Maybe [NewsfeedNewsfeedPhoto]
  , newsfeedItemPhotoTagPhotoTags_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPhotoTagPhotoTags where
  parseJSON = withObject "NewsfeedItemPhotoTagPhotoTags" \o -> NewsfeedItemPhotoTagPhotoTags
    <$> o .:? "items"
    <*> o .:? "count"
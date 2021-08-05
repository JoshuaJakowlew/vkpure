module VkApi.Objects.PodcastCover where

import VkApi.Objects.Utils

import VkApi.Objects.PhotosPhotoSizes

data PodcastCover = PodcastCover
  { podcastCover_Sizes :: Maybe [PhotosPhotoSizes]
  } deriving (Show, Generic)

instance FromJSON PodcastCover where
  parseJSON = withObject "PodcastCover" \o -> PodcastCover
    <$> o .:? "sizes"
module VkApi.Objects.PodcastExternalData where

import VkApi.Objects.Utils

import VkApi.Objects.PodcastCover

data PodcastExternalData = PodcastExternalData
  { podcastExternalData_Title :: Maybe Text
  , podcastExternalData_OwnerUrl :: Maybe Text
  , podcastExternalData_Cover :: Maybe PodcastCover
  , podcastExternalData_OwnerName :: Maybe Text
  , podcastExternalData_Url :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON PodcastExternalData where
  parseJSON = withObject "PodcastExternalData" \o -> PodcastExternalData
    <$> o .:? "title"
    <*> o .:? "owner_url"
    <*> o .:? "cover"
    <*> o .:? "owner_name"
    <*> o .:? "url"
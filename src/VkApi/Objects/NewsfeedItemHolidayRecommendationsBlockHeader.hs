module VkApi.Objects.NewsfeedItemHolidayRecommendationsBlockHeader where

import VkApi.Objects.Utils

import VkApi.Objects.BaseImage
import VkApi.Objects.BaseLinkButtonAction

data NewsfeedItemHolidayRecommendationsBlockHeader = NewsfeedItemHolidayRecommendationsBlockHeader
  { newsfeedItemHolidayRecommendationsBlockHeader_Title :: Maybe Text
  , newsfeedItemHolidayRecommendationsBlockHeader_Image :: Maybe [BaseImage]
  , newsfeedItemHolidayRecommendationsBlockHeader_Subtitle :: Maybe Text
  , newsfeedItemHolidayRecommendationsBlockHeader_Action :: Maybe BaseLinkButtonAction
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemHolidayRecommendationsBlockHeader where
  parseJSON = withObject "NewsfeedItemHolidayRecommendationsBlockHeader" \o -> NewsfeedItemHolidayRecommendationsBlockHeader
    <$> o .:? "title"
    <*> o .:? "image"
    <*> o .:? "subtitle"
    <*> o .:? "action"
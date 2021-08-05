module VkApi.Objects.NewsfeedItemPromoButton where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemPromoButtonImage
import VkApi.Objects.NewsfeedItemPromoButtonAction

data NewsfeedItemPromoButton = NewsfeedItemPromoButton
  { newsfeedItemPromoButton_SourceId :: Int
  , newsfeedItemPromoButton_Date :: Int
  , newsfeedItemPromoButton_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemPromoButton_Images :: Maybe [NewsfeedItemPromoButtonImage]
  , newsfeedItemPromoButton_Title :: Maybe Text
  , newsfeedItemPromoButton_TrackCode :: Maybe Text
  , newsfeedItemPromoButton_Action :: Maybe NewsfeedItemPromoButtonAction
  , newsfeedItemPromoButton_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPromoButton where
  parseJSON = withObject "NewsfeedItemPromoButton" \o -> NewsfeedItemPromoButton
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "images"
    <*> o .:? "title"
    <*> o .:? "track_code"
    <*> o .:? "action"
    <*> o .:? "text"
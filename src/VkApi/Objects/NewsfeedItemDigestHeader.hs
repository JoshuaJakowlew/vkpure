module VkApi.Objects.NewsfeedItemDigestHeader where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedItemDigestButton

data NewsfeedItemDigestHeader = NewsfeedItemDigestHeader
  { newsfeedItemDigestHeader_Title :: Text
  , newsfeedItemDigestHeader_Style :: Text
  , newsfeedItemDigestHeader_Subtitle :: Maybe Text
  , newsfeedItemDigestHeader_Button :: Maybe NewsfeedItemDigestButton
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemDigestHeader where
  parseJSON = withObject "NewsfeedItemDigestHeader" \o -> NewsfeedItemDigestHeader
    <$> o .: "title"
    <*> o .: "style"
    <*> o .:? "subtitle"
    <*> o .:? "button"
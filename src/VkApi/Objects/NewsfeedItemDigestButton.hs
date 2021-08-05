module VkApi.Objects.NewsfeedItemDigestButton where

import VkApi.Objects.Utils



data NewsfeedItemDigestButton = NewsfeedItemDigestButton
  { newsfeedItemDigestButton_Title :: Text
  , newsfeedItemDigestButton_Style :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemDigestButton where
  parseJSON = withObject "NewsfeedItemDigestButton" \o -> NewsfeedItemDigestButton
    <$> o .: "title"
    <*> o .:? "style"
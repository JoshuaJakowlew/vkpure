module VkApi.Objects.NewsfeedItemDigestFooter where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedItemDigestButton

data NewsfeedItemDigestFooter = NewsfeedItemDigestFooter
  { newsfeedItemDigestFooter_Style :: Text
  , newsfeedItemDigestFooter_Button :: Maybe NewsfeedItemDigestButton
  , newsfeedItemDigestFooter_Text :: Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemDigestFooter where
  parseJSON = withObject "NewsfeedItemDigestFooter" \o -> NewsfeedItemDigestFooter
    <$> o .: "style"
    <*> o .:? "button"
    <*> o .: "text"
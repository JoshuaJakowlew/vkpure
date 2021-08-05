module VkApi.Objects.NewsfeedItemDigest where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedNewsfeedItemType
import VkApi.Objects.NewsfeedItemDigestItem
import VkApi.Objects.NewsfeedItemDigestFooter
import VkApi.Objects.NewsfeedItemDigestHeader

data NewsfeedItemDigest = NewsfeedItemDigest
  { newsfeedItemDigest_SourceId :: Int
  , newsfeedItemDigest_Date :: Int
  , newsfeedItemDigest_Type :: NewsfeedNewsfeedItemType
  , newsfeedItemDigest_Items :: Maybe [NewsfeedItemDigestItem]
  , newsfeedItemDigest_Footer :: Maybe NewsfeedItemDigestFooter
  , newsfeedItemDigest_TrackCode :: Maybe Text
  , newsfeedItemDigest_Header :: Maybe NewsfeedItemDigestHeader
  , newsfeedItemDigest_FeedId :: Maybe Text
  , newsfeedItemDigest_Template :: Maybe Text
  , newsfeedItemDigest_MainPostIds :: Maybe [Text]
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemDigest where
  parseJSON = withObject "NewsfeedItemDigest" \o -> NewsfeedItemDigest
    <$> o .: "source_id"
    <*> o .: "date"
    <*> o .: "type"
    <*> o .:? "items"
    <*> o .:? "footer"
    <*> o .:? "track_code"
    <*> o .:? "header"
    <*> o .:? "feed_id"
    <*> o .:? "template"
    <*> o .:? "main_post_ids"
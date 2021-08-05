module VkApi.Objects.NewsfeedNewsfeedItem where

import VkApi.Objects.Utils

import VkApi.Objects.NewsfeedItemWallpost
import VkApi.Objects.NewsfeedItemPhoto
import VkApi.Objects.NewsfeedItemPhotoTag
import VkApi.Objects.NewsfeedItemFriend
import VkApi.Objects.NewsfeedItemAudio
import VkApi.Objects.NewsfeedItemVideo
import VkApi.Objects.NewsfeedItemTopic
import VkApi.Objects.NewsfeedItemDigest
import VkApi.Objects.NewsfeedItemPromoButton

data NewsfeedNewsfeedItem = NewsfeedNewsfeedItem1 NewsfeedItemWallpost | NewsfeedNewsfeedItem2 NewsfeedItemPhoto | NewsfeedNewsfeedItem3 NewsfeedItemPhotoTag | NewsfeedNewsfeedItem4 NewsfeedItemFriend | NewsfeedNewsfeedItem5 NewsfeedItemAudio | NewsfeedNewsfeedItem6 NewsfeedItemVideo | NewsfeedNewsfeedItem7 NewsfeedItemTopic | NewsfeedNewsfeedItem8 NewsfeedItemDigest | NewsfeedNewsfeedItem9 NewsfeedItemPromoButton
  deriving (Show, Generic)

instance FromJSON NewsfeedNewsfeedItem where
  parseJSON = genericParseJSON defaultOptions { sumEncoding  = UntaggedValue }
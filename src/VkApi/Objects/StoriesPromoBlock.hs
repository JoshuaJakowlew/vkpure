module VkApi.Objects.StoriesPromoBlock where

import VkApi.Objects.Utils



data StoriesPromoBlock = StoriesPromoBlock
  { storiesPromoBlock_NotAnimated :: Bool
  , storiesPromoBlock_Name :: Text
  , storiesPromoBlock_Photo50 :: Text
  , storiesPromoBlock_Photo100 :: Text
  } deriving (Show, Generic)

instance FromJSON StoriesPromoBlock where
  parseJSON = withObject "StoriesPromoBlock" \o -> StoriesPromoBlock
    <$> o .: "not_animated"
    <*> o .: "name"
    <*> o .: "photo_50"
    <*> o .: "photo_100"
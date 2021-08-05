module VkApi.Objects.GiftsGift where

import VkApi.Objects.Utils

import VkApi.Objects.GiftsGiftPrivacy
import VkApi.Objects.GiftsLayout

data GiftsGift = GiftsGift
  { giftsGift_FromId :: Maybe Int
  , giftsGift_Privacy :: Maybe GiftsGiftPrivacy
  , giftsGift_Message :: Maybe Text
  , giftsGift_Id :: Maybe Int
  , giftsGift_Date :: Maybe Int
  , giftsGift_Gift :: Maybe GiftsLayout
  , giftsGift_GiftHash :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GiftsGift where
  parseJSON = withObject "GiftsGift" \o -> GiftsGift
    <$> o .:? "from_id"
    <*> o .:? "privacy"
    <*> o .:? "message"
    <*> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "gift"
    <*> o .:? "gift_hash"
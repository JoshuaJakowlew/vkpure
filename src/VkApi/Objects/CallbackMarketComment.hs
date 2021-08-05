module VkApi.Objects.CallbackMarketComment where

import VkApi.Objects.Utils



data CallbackMarketComment = CallbackMarketComment
  { callbackMarketComment_FromId :: Int
  , callbackMarketComment_PhotoId :: Maybe Int
  , callbackMarketComment_MarketOwnerId :: Maybe Int
  , callbackMarketComment_Id :: Int
  , callbackMarketComment_Date :: Int
  , callbackMarketComment_Text :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON CallbackMarketComment where
  parseJSON = withObject "CallbackMarketComment" \o -> CallbackMarketComment
    <$> o .: "from_id"
    <*> o .:? "photo_id"
    <*> o .:? "market_owner_id"
    <*> o .: "id"
    <*> o .: "date"
    <*> o .:? "text"
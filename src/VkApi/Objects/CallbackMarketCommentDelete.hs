module VkApi.Objects.CallbackMarketCommentDelete where

import VkApi.Objects.Utils



data CallbackMarketCommentDelete = CallbackMarketCommentDelete
  { callbackMarketCommentDelete_UserId :: Int
  , callbackMarketCommentDelete_Id :: Int
  , callbackMarketCommentDelete_ItemId :: Int
  , callbackMarketCommentDelete_OwnerId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackMarketCommentDelete where
  parseJSON = withObject "CallbackMarketCommentDelete" \o -> CallbackMarketCommentDelete
    <$> o .: "user_id"
    <*> o .: "id"
    <*> o .: "item_id"
    <*> o .: "owner_id"
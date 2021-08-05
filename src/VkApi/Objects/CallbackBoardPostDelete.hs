module VkApi.Objects.CallbackBoardPostDelete where

import VkApi.Objects.Utils



data CallbackBoardPostDelete = CallbackBoardPostDelete
  { callbackBoardPostDelete_TopicOwnerId :: Int
  , callbackBoardPostDelete_Id :: Int
  , callbackBoardPostDelete_TopicId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackBoardPostDelete where
  parseJSON = withObject "CallbackBoardPostDelete" \o -> CallbackBoardPostDelete
    <$> o .: "topic_owner_id"
    <*> o .: "id"
    <*> o .: "topic_id"
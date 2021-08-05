module VkApi.Objects.CallbackLikeAddRemove where

import VkApi.Objects.Utils



data CallbackLikeAddRemove = CallbackLikeAddRemove
  { callbackLikeAddRemove_ThreadReplyId :: Maybe Int
  , callbackLikeAddRemove_LikerId :: Int
  , callbackLikeAddRemove_ObjectId :: Int
  , callbackLikeAddRemove_ObjectOwnerId :: Int
  , callbackLikeAddRemove_ObjectType :: Text
  , callbackLikeAddRemove_PostId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackLikeAddRemove where
  parseJSON = withObject "CallbackLikeAddRemove" \o -> CallbackLikeAddRemove
    <$> o .:? "thread_reply_id"
    <*> o .: "liker_id"
    <*> o .: "object_id"
    <*> o .: "object_owner_id"
    <*> o .: "object_type"
    <*> o .: "post_id"
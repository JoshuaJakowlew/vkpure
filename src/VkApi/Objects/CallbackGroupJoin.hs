module VkApi.Objects.CallbackGroupJoin where

import VkApi.Objects.Utils

import VkApi.Objects.CallbackGroupJoinType

data CallbackGroupJoin = CallbackGroupJoin
  { callbackGroupJoin_UserId :: Int
  , callbackGroupJoin_JoinType :: CallbackGroupJoinType
  } deriving (Show, Generic)

instance FromJSON CallbackGroupJoin where
  parseJSON = withObject "CallbackGroupJoin" \o -> CallbackGroupJoin
    <$> o .: "user_id"
    <*> o .: "join_type"
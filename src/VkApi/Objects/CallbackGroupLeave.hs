module VkApi.Objects.CallbackGroupLeave where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data CallbackGroupLeave = CallbackGroupLeave
  { callbackGroupLeave_UserId :: Maybe Int
  , callbackGroupLeave_Self :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON CallbackGroupLeave where
  parseJSON = withObject "CallbackGroupLeave" \o -> CallbackGroupLeave
    <$> o .:? "user_id"
    <*> o .:? "self"
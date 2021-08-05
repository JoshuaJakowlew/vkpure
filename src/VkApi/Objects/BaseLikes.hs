module VkApi.Objects.BaseLikes where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data BaseLikes = BaseLikes
  { baseLikes_UserLikes :: Maybe BaseBoolInt
  , baseLikes_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseLikes where
  parseJSON = withObject "BaseLikes" \o -> BaseLikes
    <$> o .:? "user_likes"
    <*> o .:? "count"
module VkApi.Objects.BaseLikesInfo where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data BaseLikesInfo = BaseLikesInfo
  { baseLikesInfo_UserLikes :: Int
  , baseLikesInfo_Count :: Int
  , baseLikesInfo_CanLike :: BaseBoolInt
  , baseLikesInfo_CanPublish :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON BaseLikesInfo where
  parseJSON = withObject "BaseLikesInfo" \o -> BaseLikesInfo
    <$> o .: "user_likes"
    <*> o .: "count"
    <*> o .: "can_like"
    <*> o .:? "can_publish"
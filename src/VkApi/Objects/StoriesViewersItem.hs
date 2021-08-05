module VkApi.Objects.StoriesViewersItem where

import VkApi.Objects.Utils

import VkApi.Objects.UsersUserFull

data StoriesViewersItem = StoriesViewersItem
  { storiesViewersItem_User :: Maybe UsersUserFull
  , storiesViewersItem_UserId :: Int
  , storiesViewersItem_IsLiked :: Bool
  } deriving (Show, Generic)

instance FromJSON StoriesViewersItem where
  parseJSON = withObject "StoriesViewersItem" \o -> StoriesViewersItem
    <$> o .:? "user"
    <*> o .: "user_id"
    <*> o .: "is_liked"
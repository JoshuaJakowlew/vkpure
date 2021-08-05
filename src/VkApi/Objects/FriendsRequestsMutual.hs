module VkApi.Objects.FriendsRequestsMutual where

import VkApi.Objects.Utils



data FriendsRequestsMutual = FriendsRequestsMutual
  { friendsRequestsMutual_Count :: Maybe Int
  , friendsRequestsMutual_Users :: Maybe [Int]
  } deriving (Show, Generic)

instance FromJSON FriendsRequestsMutual where
  parseJSON = withObject "FriendsRequestsMutual" \o -> FriendsRequestsMutual
    <$> o .:? "count"
    <*> o .:? "users"
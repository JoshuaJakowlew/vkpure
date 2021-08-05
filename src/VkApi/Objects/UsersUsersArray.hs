module VkApi.Objects.UsersUsersArray where

import VkApi.Objects.Utils



data UsersUsersArray = UsersUsersArray
  { usersUsersArray_Items :: [Int]
  , usersUsersArray_Count :: Int
  } deriving (Show, Generic)

instance FromJSON UsersUsersArray where
  parseJSON = withObject "UsersUsersArray" \o -> UsersUsersArray
    <$> o .: "items"
    <*> o .: "count"
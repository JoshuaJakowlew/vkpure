module VkApi.Objects.UsersLastSeen where

import VkApi.Objects.Utils



data UsersLastSeen = UsersLastSeen
  { usersLastSeen_Platform :: Maybe Int
  , usersLastSeen_Time :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersLastSeen where
  parseJSON = withObject "UsersLastSeen" \o -> UsersLastSeen
    <$> o .:? "platform"
    <*> o .:? "time"
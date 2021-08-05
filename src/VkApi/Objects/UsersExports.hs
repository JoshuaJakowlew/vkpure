module VkApi.Objects.UsersExports where

import VkApi.Objects.Utils



data UsersExports = UsersExports
  { usersExports_Twitter :: Maybe Int
  , usersExports_Livejournal :: Maybe Int
  , usersExports_Facebook :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersExports where
  parseJSON = withObject "UsersExports" \o -> UsersExports
    <$> o .:? "twitter"
    <*> o .:? "livejournal"
    <*> o .:? "facebook"
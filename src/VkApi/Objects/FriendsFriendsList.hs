module VkApi.Objects.FriendsFriendsList where

import VkApi.Objects.Utils



data FriendsFriendsList = FriendsFriendsList
  { friendsFriendsList_Id :: Int
  , friendsFriendsList_Name :: Text
  } deriving (Show, Generic)

instance FromJSON FriendsFriendsList where
  parseJSON = withObject "FriendsFriendsList" \o -> FriendsFriendsList
    <$> o .: "id"
    <*> o .: "name"
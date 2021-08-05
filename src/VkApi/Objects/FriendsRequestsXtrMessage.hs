module VkApi.Objects.FriendsRequestsXtrMessage where

import VkApi.Objects.Utils

import VkApi.Objects.FriendsRequestsMutual

data FriendsRequestsXtrMessage = FriendsRequestsXtrMessage
  { friendsRequestsXtrMessage_Message :: Maybe Text
  , friendsRequestsXtrMessage_UserId :: Maybe Int
  , friendsRequestsXtrMessage_Mutual :: Maybe FriendsRequestsMutual
  , friendsRequestsXtrMessage_From :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON FriendsRequestsXtrMessage where
  parseJSON = withObject "FriendsRequestsXtrMessage" \o -> FriendsRequestsXtrMessage
    <$> o .:? "message"
    <*> o .:? "user_id"
    <*> o .:? "mutual"
    <*> o .:? "from"
module VkApi.Objects.NewsfeedEventActivity where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroupFullMemberStatus

data NewsfeedEventActivity = NewsfeedEventActivity
  { newsfeedEventActivity_Friends :: [Int]
  , newsfeedEventActivity_Address :: Maybe Text
  , newsfeedEventActivity_ButtonText :: Text
  , newsfeedEventActivity_MemberStatus :: GroupsGroupFullMemberStatus
  , newsfeedEventActivity_Time :: Maybe Int
  , newsfeedEventActivity_Text :: Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedEventActivity where
  parseJSON = withObject "NewsfeedEventActivity" \o -> NewsfeedEventActivity
    <$> o .: "friends"
    <*> o .:? "address"
    <*> o .: "button_text"
    <*> o .: "member_status"
    <*> o .:? "time"
    <*> o .: "text"
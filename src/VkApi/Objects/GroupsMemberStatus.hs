module VkApi.Objects.GroupsMemberStatus where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data GroupsMemberStatus = GroupsMemberStatus
  { groupsMemberStatus_UserId :: Int
  , groupsMemberStatus_Member :: BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsMemberStatus where
  parseJSON = withObject "GroupsMemberStatus" \o -> GroupsMemberStatus
    <$> o .: "user_id"
    <*> o .: "member"
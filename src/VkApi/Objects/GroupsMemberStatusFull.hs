module VkApi.Objects.GroupsMemberStatusFull where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data GroupsMemberStatusFull = GroupsMemberStatusFull
  { groupsMemberStatusFull_Request :: Maybe BaseBoolInt
  , groupsMemberStatusFull_Invitation :: Maybe BaseBoolInt
  , groupsMemberStatusFull_CanRecall :: Maybe BaseBoolInt
  , groupsMemberStatusFull_UserId :: Int
  , groupsMemberStatusFull_CanInvite :: Maybe BaseBoolInt
  , groupsMemberStatusFull_Member :: BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON GroupsMemberStatusFull where
  parseJSON = withObject "GroupsMemberStatusFull" \o -> GroupsMemberStatusFull
    <$> o .:? "request"
    <*> o .:? "invitation"
    <*> o .:? "can_recall"
    <*> o .: "user_id"
    <*> o .:? "can_invite"
    <*> o .: "member"
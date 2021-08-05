module VkApi.Objects.GroupsOnlineStatusType where

import VkApi.Objects.Utils



data GroupsOnlineStatusType = GroupsOnlineStatusTypeNone | GroupsOnlineStatusTypeOnline | GroupsOnlineStatusTypeAnswerMark
  deriving (Show, Generic)

instance FromJSON GroupsOnlineStatusType where
  parseJSON = withText "GroupsOnlineStatusType" \ t -> case t of 
    "none" -> pure GroupsOnlineStatusTypeNone
    "online" -> pure GroupsOnlineStatusTypeOnline
    "answer_mark" -> pure GroupsOnlineStatusTypeAnswerMark
    _ -> fail "GroupsOnlineStatusType: doesnt match case"

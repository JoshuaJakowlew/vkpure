module VkApi.Objects.GroupsGroupType where

import VkApi.Objects.Utils



data GroupsGroupType = GroupsGroupTypeGroup | GroupsGroupTypePage | GroupsGroupTypeEvent
  deriving (Show, Generic)

instance FromJSON GroupsGroupType where
  parseJSON = withText "GroupsGroupType" \ t -> case t of 
    "group" -> pure GroupsGroupTypeGroup
    "page" -> pure GroupsGroupTypePage
    "event" -> pure GroupsGroupTypeEvent
    _ -> fail "GroupsGroupType: doesnt match case"

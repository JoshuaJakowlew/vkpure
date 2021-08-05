module VkApi.Objects.GroupsOwnerXtrBanInfoType where

import VkApi.Objects.Utils



data GroupsOwnerXtrBanInfoType = GroupsOwnerXtrBanInfoTypeGroup | GroupsOwnerXtrBanInfoTypeProfile
  deriving (Show, Generic)

instance FromJSON GroupsOwnerXtrBanInfoType where
  parseJSON = withText "GroupsOwnerXtrBanInfoType" \ t -> case t of 
    "group" -> pure GroupsOwnerXtrBanInfoTypeGroup
    "profile" -> pure GroupsOwnerXtrBanInfoTypeProfile
    _ -> fail "GroupsOwnerXtrBanInfoType: doesnt match case"

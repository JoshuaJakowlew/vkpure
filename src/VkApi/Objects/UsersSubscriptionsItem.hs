module VkApi.Objects.UsersSubscriptionsItem where

import VkApi.Objects.Utils

import VkApi.Objects.UsersUserXtrType
import VkApi.Objects.GroupsGroupFull

data UsersSubscriptionsItem = UsersSubscriptionsItem1 UsersUserXtrType | UsersSubscriptionsItem2 GroupsGroupFull
  deriving (Show, Generic)

instance FromJSON UsersSubscriptionsItem where
  parseJSON = genericParseJSON defaultOptions { sumEncoding  = UntaggedValue }
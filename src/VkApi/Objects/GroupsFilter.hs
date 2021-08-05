module VkApi.Objects.GroupsFilter where

import VkApi.Objects.Utils



data GroupsFilter = GroupsFilterAdmin | GroupsFilterEditor | GroupsFilterModer | GroupsFilterAdvertiser | GroupsFilterGroups | GroupsFilterPublics | GroupsFilterEvents | GroupsFilterHasAddresses
  deriving (Show, Generic)

instance FromJSON GroupsFilter where
  parseJSON = withText "GroupsFilter" \ t -> case t of 
    "admin" -> pure GroupsFilterAdmin
    "editor" -> pure GroupsFilterEditor
    "moder" -> pure GroupsFilterModer
    "advertiser" -> pure GroupsFilterAdvertiser
    "groups" -> pure GroupsFilterGroups
    "publics" -> pure GroupsFilterPublics
    "events" -> pure GroupsFilterEvents
    "has_addresses" -> pure GroupsFilterHasAddresses
    _ -> fail "GroupsFilter: doesnt match case"

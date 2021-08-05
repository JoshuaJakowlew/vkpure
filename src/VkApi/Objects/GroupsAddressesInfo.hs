module VkApi.Objects.GroupsAddressesInfo where

import VkApi.Objects.Utils



data GroupsAddressesInfo = GroupsAddressesInfo
  { groupsAddressesInfo_MainAddressId :: Maybe Int
  , groupsAddressesInfo_IsEnabled :: Bool
  } deriving (Show, Generic)

instance FromJSON GroupsAddressesInfo where
  parseJSON = withObject "GroupsAddressesInfo" \o -> GroupsAddressesInfo
    <$> o .:? "main_address_id"
    <*> o .: "is_enabled"
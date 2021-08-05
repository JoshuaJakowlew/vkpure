module VkApi.Objects.GroupsProfileItem where

import VkApi.Objects.Utils



data GroupsProfileItem = GroupsProfileItem
  { groupsProfileItem_Id :: Int
  , groupsProfileItem_FirstName :: Text
  , groupsProfileItem_Photo50 :: Text
  , groupsProfileItem_Photo100 :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsProfileItem where
  parseJSON = withObject "GroupsProfileItem" \o -> GroupsProfileItem
    <$> o .: "id"
    <*> o .: "first_name"
    <*> o .: "photo_50"
    <*> o .: "photo_100"
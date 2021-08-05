module VkApi.Objects.GroupsGroupTag where

import VkApi.Objects.Utils



data GroupsGroupTag = GroupsGroupTag
  { groupsGroupTag_Uses :: Maybe Int
  , groupsGroupTag_Id :: Int
  , groupsGroupTag_Color :: Text
  , groupsGroupTag_Name :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsGroupTag where
  parseJSON = withObject "GroupsGroupTag" \o -> GroupsGroupTag
    <$> o .:? "uses"
    <*> o .: "id"
    <*> o .: "color"
    <*> o .: "name"
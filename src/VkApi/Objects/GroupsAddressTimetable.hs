module VkApi.Objects.GroupsAddressTimetable where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsAddressTimetableDay

data GroupsAddressTimetable = GroupsAddressTimetable
  { groupsAddressTimetable_Mon :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Thu :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Sat :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Wed :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Fri :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Tue :: Maybe GroupsAddressTimetableDay
  , groupsAddressTimetable_Sun :: Maybe GroupsAddressTimetableDay
  } deriving (Show, Generic)

instance FromJSON GroupsAddressTimetable where
  parseJSON = withObject "GroupsAddressTimetable" \o -> GroupsAddressTimetable
    <$> o .:? "mon"
    <*> o .:? "thu"
    <*> o .:? "sat"
    <*> o .:? "wed"
    <*> o .:? "fri"
    <*> o .:? "tue"
    <*> o .:? "sun"
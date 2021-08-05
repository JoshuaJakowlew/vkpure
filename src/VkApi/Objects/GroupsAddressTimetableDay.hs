module VkApi.Objects.GroupsAddressTimetableDay where

import VkApi.Objects.Utils



data GroupsAddressTimetableDay = GroupsAddressTimetableDay
  { groupsAddressTimetableDay_BreakCloseTime :: Maybe Int
  , groupsAddressTimetableDay_CloseTime :: Int
  , groupsAddressTimetableDay_OpenTime :: Int
  , groupsAddressTimetableDay_BreakOpenTime :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON GroupsAddressTimetableDay where
  parseJSON = withObject "GroupsAddressTimetableDay" \o -> GroupsAddressTimetableDay
    <$> o .:? "break_close_time"
    <*> o .: "close_time"
    <*> o .: "open_time"
    <*> o .:? "break_open_time"
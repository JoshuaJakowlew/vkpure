module VkApi.Objects.GroupsGroupBanInfo where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsBanInfoReason

data GroupsGroupBanInfo = GroupsGroupBanInfo
  { groupsGroupBanInfo_EndDate :: Maybe Int
  , groupsGroupBanInfo_Comment :: Maybe Text
  , groupsGroupBanInfo_Reason :: Maybe GroupsBanInfoReason
  } deriving (Show, Generic)

instance FromJSON GroupsGroupBanInfo where
  parseJSON = withObject "GroupsGroupBanInfo" \o -> GroupsGroupBanInfo
    <$> o .:? "end_date"
    <*> o .:? "comment"
    <*> o .:? "reason"
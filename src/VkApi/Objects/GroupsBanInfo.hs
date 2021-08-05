module VkApi.Objects.GroupsBanInfo where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsBanInfoReason

data GroupsBanInfo = GroupsBanInfo
  { groupsBanInfo_EndDate :: Maybe Int
  , groupsBanInfo_Comment :: Maybe Text
  , groupsBanInfo_AdminId :: Maybe Int
  , groupsBanInfo_IsClosed :: Maybe Bool
  , groupsBanInfo_Date :: Maybe Int
  , groupsBanInfo_Reason :: Maybe GroupsBanInfoReason
  , groupsBanInfo_CommentVisible :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON GroupsBanInfo where
  parseJSON = withObject "GroupsBanInfo" \o -> GroupsBanInfo
    <$> o .:? "end_date"
    <*> o .:? "comment"
    <*> o .:? "admin_id"
    <*> o .:? "is_closed"
    <*> o .:? "date"
    <*> o .:? "reason"
    <*> o .:? "comment_visible"
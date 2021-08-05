module VkApi.Objects.MessagesChatPreview where

import VkApi.Objects.Utils



data MessagesChatPreview = MessagesChatPreview
  { messagesChatPreview_Title :: Maybe Text
  , messagesChatPreview_AdminId :: Maybe Int
  , messagesChatPreview_LocalId :: Maybe Int
  , messagesChatPreview_MembersCount :: Maybe Int
  , messagesChatPreview_Members :: Maybe [Int]
  , messagesChatPreview_Joined :: Maybe Bool
  , messagesChatPreview_IsMember :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON MessagesChatPreview where
  parseJSON = withObject "MessagesChatPreview" \o -> MessagesChatPreview
    <$> o .:? "title"
    <*> o .:? "admin_id"
    <*> o .:? "local_id"
    <*> o .:? "members_count"
    <*> o .:? "members"
    <*> o .:? "joined"
    <*> o .:? "is_member"
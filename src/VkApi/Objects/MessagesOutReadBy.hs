module VkApi.Objects.MessagesOutReadBy where

import VkApi.Objects.Utils



data MessagesOutReadBy = MessagesOutReadBy
  { messagesOutReadBy_MemberIds :: Maybe [Int]
  , messagesOutReadBy_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesOutReadBy where
  parseJSON = withObject "MessagesOutReadBy" \o -> MessagesOutReadBy
    <$> o .:? "member_ids"
    <*> o .:? "count"
module VkApi.Objects.AccountPushConversations where

import VkApi.Objects.Utils

import VkApi.Objects.AccountPushConversationsItem

data AccountPushConversations = AccountPushConversations
  { accountPushConversations_Items :: Maybe [AccountPushConversationsItem]
  , accountPushConversations_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AccountPushConversations where
  parseJSON = withObject "AccountPushConversations" \o -> AccountPushConversations
    <$> o .:? "items"
    <*> o .:? "count"
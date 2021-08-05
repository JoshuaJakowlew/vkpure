module VkApi.Objects.AccountPushConversationsItem where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt

data AccountPushConversationsItem = AccountPushConversationsItem
  { accountPushConversationsItem_DisabledUntil :: Int
  , accountPushConversationsItem_DisabledMentions :: Maybe BaseBoolInt
  , accountPushConversationsItem_Sound :: BaseBoolInt
  , accountPushConversationsItem_PeerId :: Int
  , accountPushConversationsItem_DisabledMassMentions :: Maybe BaseBoolInt
  } deriving (Show, Generic)

instance FromJSON AccountPushConversationsItem where
  parseJSON = withObject "AccountPushConversationsItem" \o -> AccountPushConversationsItem
    <$> o .: "disabled_until"
    <*> o .:? "disabled_mentions"
    <*> o .: "sound"
    <*> o .: "peer_id"
    <*> o .:? "disabled_mass_mentions"
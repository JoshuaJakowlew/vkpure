module VkApi.Objects.MessagesChatRestrictions where

import VkApi.Objects.Utils



data MessagesChatRestrictions = MessagesChatRestrictions
  { messagesChatRestrictions_OnlyAdminsEditPin :: Maybe Bool
  , messagesChatRestrictions_AdminsPromoteUsers :: Maybe Bool
  , messagesChatRestrictions_OnlyAdminsEditInfo :: Maybe Bool
  , messagesChatRestrictions_OnlyAdminsInvite :: Maybe Bool
  , messagesChatRestrictions_OnlyAdminsKick :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON MessagesChatRestrictions where
  parseJSON = withObject "MessagesChatRestrictions" \o -> MessagesChatRestrictions
    <$> o .:? "only_admins_edit_pin"
    <*> o .:? "admins_promote_users"
    <*> o .:? "only_admins_edit_info"
    <*> o .:? "only_admins_invite"
    <*> o .:? "only_admins_kick"
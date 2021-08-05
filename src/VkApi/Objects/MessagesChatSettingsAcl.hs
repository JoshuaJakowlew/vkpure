module VkApi.Objects.MessagesChatSettingsAcl where

import VkApi.Objects.Utils



data MessagesChatSettingsAcl = MessagesChatSettingsAcl
  { messagesChatSettingsAcl_CanChangeInfo :: Bool
  , messagesChatSettingsAcl_CanSeeInviteLink :: Bool
  , messagesChatSettingsAcl_CanCall :: Bool
  , messagesChatSettingsAcl_CanPromoteUsers :: Bool
  , messagesChatSettingsAcl_CanInvite :: Bool
  , messagesChatSettingsAcl_CanCopyChat :: Bool
  , messagesChatSettingsAcl_CanChangeInviteLink :: Bool
  , messagesChatSettingsAcl_CanChangeServiceType :: Maybe Bool
  , messagesChatSettingsAcl_CanChangePin :: Bool
  , messagesChatSettingsAcl_CanUseMassMentions :: Bool
  , messagesChatSettingsAcl_CanModerate :: Bool
  } deriving (Show, Generic)

instance FromJSON MessagesChatSettingsAcl where
  parseJSON = withObject "MessagesChatSettingsAcl" \o -> MessagesChatSettingsAcl
    <$> o .: "can_change_info"
    <*> o .: "can_see_invite_link"
    <*> o .: "can_call"
    <*> o .: "can_promote_users"
    <*> o .: "can_invite"
    <*> o .: "can_copy_chat"
    <*> o .: "can_change_invite_link"
    <*> o .:? "can_change_service_type"
    <*> o .: "can_change_pin"
    <*> o .: "can_use_mass_mentions"
    <*> o .: "can_moderate"
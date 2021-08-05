module VkApi.Objects.MessagesChatSettingsPermissions where

import VkApi.Objects.Utils



data MessagesChatSettingsPermissions = MessagesChatSettingsPermissions
  { messagesChatSettingsPermissions_Invite :: Maybe Text
  , messagesChatSettingsPermissions_ChangePin :: Maybe Text
  , messagesChatSettingsPermissions_ChangeAdmins :: Maybe Text
  , messagesChatSettingsPermissions_Call :: Maybe Text
  , messagesChatSettingsPermissions_ChangeInfo :: Maybe Text
  , messagesChatSettingsPermissions_UseMassMentions :: Maybe Text
  , messagesChatSettingsPermissions_SeeInviteLink :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON MessagesChatSettingsPermissions where
  parseJSON = withObject "MessagesChatSettingsPermissions" \o -> MessagesChatSettingsPermissions
    <$> o .:? "invite"
    <*> o .:? "change_pin"
    <*> o .:? "change_admins"
    <*> o .:? "call"
    <*> o .:? "change_info"
    <*> o .:? "use_mass_mentions"
    <*> o .:? "see_invite_link"
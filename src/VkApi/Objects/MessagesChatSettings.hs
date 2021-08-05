module VkApi.Objects.MessagesChatSettings where

import VkApi.Objects.Utils

import VkApi.Objects.MessagesChatSettingsPermissions
import VkApi.Objects.MessagesChatSettingsState
import VkApi.Objects.MessagesChatSettingsPhoto
import VkApi.Objects.MessagesPinnedMessage
import VkApi.Objects.MessagesChatSettingsAcl

data MessagesChatSettings = MessagesChatSettings
  { messagesChatSettings_IsDisappearing :: Maybe Bool
  , messagesChatSettings_Theme :: Maybe Text
  , messagesChatSettings_AdminIds :: Maybe [Int]
  , messagesChatSettings_Title :: Text
  , messagesChatSettings_Permissions :: Maybe MessagesChatSettingsPermissions
  , messagesChatSettings_State :: MessagesChatSettingsState
  , messagesChatSettings_MembersCount :: Maybe Int
  , messagesChatSettings_DisappearingChatLink :: Maybe Text
  , messagesChatSettings_Photo :: Maybe MessagesChatSettingsPhoto
  , messagesChatSettings_PinnedMessage :: Maybe MessagesPinnedMessage
  , messagesChatSettings_Acl :: MessagesChatSettingsAcl
  , messagesChatSettings_IsGroupChannel :: Maybe Bool
  , messagesChatSettings_OwnerId :: Int
  , messagesChatSettings_IsService :: Maybe Bool
  , messagesChatSettings_ActiveIds :: [Int]
  , messagesChatSettings_FriendsCount :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesChatSettings where
  parseJSON = withObject "MessagesChatSettings" \o -> MessagesChatSettings
    <$> o .:? "is_disappearing"
    <*> o .:? "theme"
    <*> o .:? "admin_ids"
    <*> o .: "title"
    <*> o .:? "permissions"
    <*> o .: "state"
    <*> o .:? "members_count"
    <*> o .:? "disappearing_chat_link"
    <*> o .:? "photo"
    <*> o .:? "pinned_message"
    <*> o .: "acl"
    <*> o .:? "is_group_channel"
    <*> o .: "owner_id"
    <*> o .:? "is_service"
    <*> o .: "active_ids"
    <*> o .:? "friends_count"
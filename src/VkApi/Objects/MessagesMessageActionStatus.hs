module VkApi.Objects.MessagesMessageActionStatus where

import VkApi.Objects.Utils



data MessagesMessageActionStatus = MessagesMessageActionStatusChatPhotoUpdate | MessagesMessageActionStatusChatPhotoRemove | MessagesMessageActionStatusChatCreate | MessagesMessageActionStatusChatTitleUpdate | MessagesMessageActionStatusChatInviteUser | MessagesMessageActionStatusChatKickUser | MessagesMessageActionStatusChatPinMessage | MessagesMessageActionStatusChatUnpinMessage | MessagesMessageActionStatusChatInviteUserByLink | MessagesMessageActionStatusChatInviteUserByMessageRequest
  deriving (Show, Generic)

instance FromJSON MessagesMessageActionStatus where
  parseJSON = withText "MessagesMessageActionStatus" \ t -> case t of 
    "chat_photo_update" -> pure MessagesMessageActionStatusChatPhotoUpdate
    "chat_photo_remove" -> pure MessagesMessageActionStatusChatPhotoRemove
    "chat_create" -> pure MessagesMessageActionStatusChatCreate
    "chat_title_update" -> pure MessagesMessageActionStatusChatTitleUpdate
    "chat_invite_user" -> pure MessagesMessageActionStatusChatInviteUser
    "chat_kick_user" -> pure MessagesMessageActionStatusChatKickUser
    "chat_pin_message" -> pure MessagesMessageActionStatusChatPinMessage
    "chat_unpin_message" -> pure MessagesMessageActionStatusChatUnpinMessage
    "chat_invite_user_by_link" -> pure MessagesMessageActionStatusChatInviteUserByLink
    "chat_invite_user_by_message_request" -> pure MessagesMessageActionStatusChatInviteUserByMessageRequest
    _ -> fail "MessagesMessageActionStatus: doesnt match case"

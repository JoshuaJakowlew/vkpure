module VkApi.Objects.MessagesMessageRequestData where

import VkApi.Objects.Utils



data MessagesMessageRequestData = MessagesMessageRequestData
  { messagesMessageRequestData_Status :: Maybe Text
  , messagesMessageRequestData_RequestDate :: Maybe Int
  , messagesMessageRequestData_InviterId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON MessagesMessageRequestData where
  parseJSON = withObject "MessagesMessageRequestData" \o -> MessagesMessageRequestData
    <$> o .:? "status"
    <*> o .:? "request_date"
    <*> o .:? "inviter_id"
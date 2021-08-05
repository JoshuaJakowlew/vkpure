module VkApi.Objects.AccountNameRequest where

import VkApi.Objects.Utils

import VkApi.Objects.AccountNameRequestStatus

data AccountNameRequest = AccountNameRequest
  { accountNameRequest_Status :: Maybe AccountNameRequestStatus
  , accountNameRequest_LinkLabel :: Maybe Text
  , accountNameRequest_LinkHref :: Maybe Text
  , accountNameRequest_Id :: Maybe Int
  , accountNameRequest_LastName :: Maybe Text
  , accountNameRequest_FirstName :: Maybe Text
  , accountNameRequest_Lang :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AccountNameRequest where
  parseJSON = withObject "AccountNameRequest" \o -> AccountNameRequest
    <$> o .:? "status"
    <*> o .:? "link_label"
    <*> o .:? "link_href"
    <*> o .:? "id"
    <*> o .:? "last_name"
    <*> o .:? "first_name"
    <*> o .:? "lang"
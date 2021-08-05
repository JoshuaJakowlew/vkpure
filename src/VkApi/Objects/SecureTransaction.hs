module VkApi.Objects.SecureTransaction where

import VkApi.Objects.Utils



data SecureTransaction = SecureTransaction
  { secureTransaction_UidFrom :: Maybe Int
  , secureTransaction_Id :: Maybe Int
  , secureTransaction_Date :: Maybe Int
  , secureTransaction_UidTo :: Maybe Int
  , secureTransaction_Votes :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON SecureTransaction where
  parseJSON = withObject "SecureTransaction" \o -> SecureTransaction
    <$> o .:? "uid_from"
    <*> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "uid_to"
    <*> o .:? "votes"
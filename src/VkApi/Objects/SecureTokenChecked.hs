module VkApi.Objects.SecureTokenChecked where

import VkApi.Objects.Utils



data SecureTokenChecked = SecureTokenChecked
  { secureTokenChecked_UserId :: Maybe Int
  , secureTokenChecked_Expire :: Maybe Int
  , secureTokenChecked_Date :: Maybe Int
  , secureTokenChecked_Success :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON SecureTokenChecked where
  parseJSON = withObject "SecureTokenChecked" \o -> SecureTokenChecked
    <$> o .:? "user_id"
    <*> o .:? "expire"
    <*> o .:? "date"
    <*> o .:? "success"
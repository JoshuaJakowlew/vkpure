module VkApi.Objects.CallbackUserUnblock where

import VkApi.Objects.Utils



data CallbackUserUnblock = CallbackUserUnblock
  { callbackUserUnblock_UserId :: Int
  , callbackUserUnblock_AdminId :: Int
  , callbackUserUnblock_ByEndDate :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackUserUnblock where
  parseJSON = withObject "CallbackUserUnblock" \o -> CallbackUserUnblock
    <$> o .: "user_id"
    <*> o .: "admin_id"
    <*> o .: "by_end_date"
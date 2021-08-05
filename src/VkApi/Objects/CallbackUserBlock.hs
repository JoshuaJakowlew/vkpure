module VkApi.Objects.CallbackUserBlock where

import VkApi.Objects.Utils



data CallbackUserBlock = CallbackUserBlock
  { callbackUserBlock_UnblockDate :: Int
  , callbackUserBlock_Comment :: Maybe Text
  , callbackUserBlock_UserId :: Int
  , callbackUserBlock_AdminId :: Int
  , callbackUserBlock_Reason :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackUserBlock where
  parseJSON = withObject "CallbackUserBlock" \o -> CallbackUserBlock
    <$> o .: "unblock_date"
    <*> o .:? "comment"
    <*> o .: "user_id"
    <*> o .: "admin_id"
    <*> o .: "reason"
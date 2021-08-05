module VkApi.Objects.CallbackQrScan where

import VkApi.Objects.Utils



data CallbackQrScan = CallbackQrScan
  { callbackQrScan_Subtype :: Text
  , callbackQrScan_UserId :: Int
  , callbackQrScan_Data :: Text
  , callbackQrScan_Type :: Text
  , callbackQrScan_Reread :: Bool
  } deriving (Show, Generic)

instance FromJSON CallbackQrScan where
  parseJSON = withObject "CallbackQrScan" \o -> CallbackQrScan
    <$> o .: "subtype"
    <*> o .: "user_id"
    <*> o .: "data"
    <*> o .: "type"
    <*> o .: "reread"
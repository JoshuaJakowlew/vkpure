module VkApi.Objects.CallbackMessageDeny where

import VkApi.Objects.Utils



data CallbackMessageDeny = CallbackMessageDeny
  { callbackMessageDeny_UserId :: Int
  } deriving (Show, Generic)

instance FromJSON CallbackMessageDeny where
  parseJSON = withObject "CallbackMessageDeny" \o -> CallbackMessageDeny
    <$> o .: "user_id"
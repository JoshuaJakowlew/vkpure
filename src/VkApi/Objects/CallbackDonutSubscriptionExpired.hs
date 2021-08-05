module VkApi.Objects.CallbackDonutSubscriptionExpired where

import VkApi.Objects.Utils



data CallbackDonutSubscriptionExpired = CallbackDonutSubscriptionExpired
  { callbackDonutSubscriptionExpired_UserId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON CallbackDonutSubscriptionExpired where
  parseJSON = withObject "CallbackDonutSubscriptionExpired" \o -> CallbackDonutSubscriptionExpired
    <$> o .:? "user_id"
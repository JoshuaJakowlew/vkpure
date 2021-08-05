module VkApi.Objects.CallbackDonutSubscriptionCancelled where

import VkApi.Objects.Utils



data CallbackDonutSubscriptionCancelled = CallbackDonutSubscriptionCancelled
  { callbackDonutSubscriptionCancelled_UserId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON CallbackDonutSubscriptionCancelled where
  parseJSON = withObject "CallbackDonutSubscriptionCancelled" \o -> CallbackDonutSubscriptionCancelled
    <$> o .:? "user_id"
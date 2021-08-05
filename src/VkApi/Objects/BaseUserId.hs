module VkApi.Objects.BaseUserId where

import VkApi.Objects.Utils



data BaseUserId = BaseUserId
  { baseUserId_UserId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseUserId where
  parseJSON = withObject "BaseUserId" \o -> BaseUserId
    <$> o .:? "user_id"
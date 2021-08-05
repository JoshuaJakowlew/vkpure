module VkApi.Objects.SecureSmsNotification where

import VkApi.Objects.Utils



data SecureSmsNotification = SecureSmsNotification
  { secureSmsNotification_Message :: Maybe Text
  , secureSmsNotification_UserId :: Maybe Text
  , secureSmsNotification_Id :: Maybe Text
  , secureSmsNotification_Date :: Maybe Text
  , secureSmsNotification_AppId :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON SecureSmsNotification where
  parseJSON = withObject "SecureSmsNotification" \o -> SecureSmsNotification
    <$> o .:? "message"
    <*> o .:? "user_id"
    <*> o .:? "id"
    <*> o .:? "date"
    <*> o .:? "app_id"
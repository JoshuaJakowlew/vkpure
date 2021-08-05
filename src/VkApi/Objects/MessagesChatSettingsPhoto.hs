module VkApi.Objects.MessagesChatSettingsPhoto where

import VkApi.Objects.Utils



data MessagesChatSettingsPhoto = MessagesChatSettingsPhoto
  { messagesChatSettingsPhoto_Photo200 :: Maybe Text
  , messagesChatSettingsPhoto_IsDefaultPhoto :: Maybe Bool
  , messagesChatSettingsPhoto_Photo50 :: Maybe Text
  , messagesChatSettingsPhoto_Photo100 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON MessagesChatSettingsPhoto where
  parseJSON = withObject "MessagesChatSettingsPhoto" \o -> MessagesChatSettingsPhoto
    <$> o .:? "photo_200"
    <*> o .:? "is_default_photo"
    <*> o .:? "photo_50"
    <*> o .:? "photo_100"
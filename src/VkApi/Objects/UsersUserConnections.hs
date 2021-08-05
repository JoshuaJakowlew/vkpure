module VkApi.Objects.UsersUserConnections where

import VkApi.Objects.Utils



data UsersUserConnections = UsersUserConnections
  { usersUserConnections_Instagram :: Text
  , usersUserConnections_FacebookName :: Maybe Text
  , usersUserConnections_Twitter :: Text
  , usersUserConnections_Livejournal :: Maybe Text
  , usersUserConnections_Skype :: Text
  , usersUserConnections_Facebook :: Text
  } deriving (Show, Generic)

instance FromJSON UsersUserConnections where
  parseJSON = withObject "UsersUserConnections" \o -> UsersUserConnections
    <$> o .: "instagram"
    <*> o .:? "facebook_name"
    <*> o .: "twitter"
    <*> o .:? "livejournal"
    <*> o .: "skype"
    <*> o .: "facebook"
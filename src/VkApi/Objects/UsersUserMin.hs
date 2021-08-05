module VkApi.Objects.UsersUserMin where

import VkApi.Objects.Utils



data UsersUserMin = UsersUserMin
  { usersUserMin_Deactivated :: Maybe Text
  , usersUserMin_Id :: Int
  , usersUserMin_LastName :: Text
  , usersUserMin_FirstName :: Text
  , usersUserMin_IsClosed :: Maybe Bool
  , usersUserMin_CanAccessClosed :: Maybe Bool
  , usersUserMin_Hidden :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersUserMin where
  parseJSON = withObject "UsersUserMin" \o -> UsersUserMin
    <$> o .:? "deactivated"
    <*> o .: "id"
    <*> o .: "last_name"
    <*> o .: "first_name"
    <*> o .:? "is_closed"
    <*> o .:? "can_access_closed"
    <*> o .:? "hidden"
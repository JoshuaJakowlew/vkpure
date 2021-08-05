module VkApi.Objects.UsersRelative where

import VkApi.Objects.Utils



data UsersRelative = UsersRelative
  { usersRelative_Id :: Maybe Int
  , usersRelative_Name :: Maybe Text
  , usersRelative_BirthDate :: Maybe Text
  , usersRelative_Type :: Text
  } deriving (Show, Generic)

instance FromJSON UsersRelative where
  parseJSON = withObject "UsersRelative" \o -> UsersRelative
    <$> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "birth_date"
    <*> o .: "type"
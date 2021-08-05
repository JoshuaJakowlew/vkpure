module VkApi.Objects.UsersOccupation where

import VkApi.Objects.Utils



data UsersOccupation = UsersOccupation
  { usersOccupation_Id :: Maybe Int
  , usersOccupation_Name :: Maybe Text
  , usersOccupation_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersOccupation where
  parseJSON = withObject "UsersOccupation" \o -> UsersOccupation
    <$> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "type"
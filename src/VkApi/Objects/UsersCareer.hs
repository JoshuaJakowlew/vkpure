module VkApi.Objects.UsersCareer where

import VkApi.Objects.Utils



data UsersCareer = UsersCareer
  { usersCareer_Company :: Maybe Text
  , usersCareer_GroupId :: Maybe Int
  , usersCareer_CityId :: Maybe Int
  , usersCareer_Id :: Maybe Int
  , usersCareer_CountryId :: Maybe Int
  , usersCareer_Until :: Maybe Int
  , usersCareer_CityName :: Maybe Text
  , usersCareer_Position :: Maybe Text
  , usersCareer_From :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersCareer where
  parseJSON = withObject "UsersCareer" \o -> UsersCareer
    <$> o .:? "company"
    <*> o .:? "group_id"
    <*> o .:? "city_id"
    <*> o .:? "id"
    <*> o .:? "country_id"
    <*> o .:? "until"
    <*> o .:? "city_name"
    <*> o .:? "position"
    <*> o .:? "from"
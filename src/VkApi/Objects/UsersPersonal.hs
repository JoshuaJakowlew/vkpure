module VkApi.Objects.UsersPersonal where

import VkApi.Objects.Utils



data UsersPersonal = UsersPersonal
  { usersPersonal_ReligionId :: Maybe Int
  , usersPersonal_Political :: Maybe Int
  , usersPersonal_LifeMain :: Maybe Int
  , usersPersonal_PeopleMain :: Maybe Int
  , usersPersonal_Langs :: Maybe [Text]
  , usersPersonal_Religion :: Maybe Text
  , usersPersonal_Alcohol :: Maybe Int
  , usersPersonal_Smoking :: Maybe Int
  , usersPersonal_InspiredBy :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersPersonal where
  parseJSON = withObject "UsersPersonal" \o -> UsersPersonal
    <$> o .:? "religion_id"
    <*> o .:? "political"
    <*> o .:? "life_main"
    <*> o .:? "people_main"
    <*> o .:? "langs"
    <*> o .:? "religion"
    <*> o .:? "alcohol"
    <*> o .:? "smoking"
    <*> o .:? "inspired_by"
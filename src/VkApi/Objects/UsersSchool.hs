module VkApi.Objects.UsersSchool where

import VkApi.Objects.Utils



data UsersSchool = UsersSchool
  { usersSchool_YearTo :: Maybe Int
  , usersSchool_Id :: Maybe Text
  , usersSchool_TypeStr :: Maybe Text
  , usersSchool_Name :: Maybe Text
  , usersSchool_City :: Maybe Int
  , usersSchool_YearGraduated :: Maybe Int
  , usersSchool_YearFrom :: Maybe Int
  , usersSchool_Class :: Maybe Text
  , usersSchool_Country :: Maybe Int
  , usersSchool_Type :: Maybe Int
  , usersSchool_Speciality :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UsersSchool where
  parseJSON = withObject "UsersSchool" \o -> UsersSchool
    <$> o .:? "year_to"
    <*> o .:? "id"
    <*> o .:? "type_str"
    <*> o .:? "name"
    <*> o .:? "city"
    <*> o .:? "year_graduated"
    <*> o .:? "year_from"
    <*> o .:? "class"
    <*> o .:? "country"
    <*> o .:? "type"
    <*> o .:? "speciality"
module VkApi.Objects.UsersUniversity where

import VkApi.Objects.Utils



data UsersUniversity = UsersUniversity
  { usersUniversity_Chair :: Maybe Int
  , usersUniversity_ChairName :: Maybe Text
  , usersUniversity_UniversityGroupId :: Maybe Int
  , usersUniversity_FacultyName :: Maybe Text
  , usersUniversity_Id :: Maybe Int
  , usersUniversity_Name :: Maybe Text
  , usersUniversity_City :: Maybe Int
  , usersUniversity_EducationStatus :: Maybe Text
  , usersUniversity_EducationForm :: Maybe Text
  , usersUniversity_Country :: Maybe Int
  , usersUniversity_Graduation :: Maybe Int
  , usersUniversity_Faculty :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersUniversity where
  parseJSON = withObject "UsersUniversity" \o -> UsersUniversity
    <$> o .:? "chair"
    <*> o .:? "chair_name"
    <*> o .:? "university_group_id"
    <*> o .:? "faculty_name"
    <*> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "city"
    <*> o .:? "education_status"
    <*> o .:? "education_form"
    <*> o .:? "country"
    <*> o .:? "graduation"
    <*> o .:? "faculty"
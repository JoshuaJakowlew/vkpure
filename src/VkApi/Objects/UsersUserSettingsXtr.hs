module VkApi.Objects.UsersUserSettingsXtr where

import VkApi.Objects.Utils

import VkApi.Objects.UsersUserMin
import VkApi.Objects.AccountNameRequest
import VkApi.Objects.UsersUserConnections
import VkApi.Objects.BaseCity
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BaseSex
import VkApi.Objects.UsersUserRelation
import VkApi.Objects.BaseCountry
import VkApi.Objects.UsersPersonal
import VkApi.Objects.AccountUserSettingsInterests
import VkApi.Objects.AudioAudio

data UsersUserSettingsXtr = UsersUserSettingsXtr
  { usersUserSettingsXtr_RelationPartner :: Maybe UsersUserMin
  , usersUserSettingsXtr_BdateVisibility :: Maybe Int
  , usersUserSettingsXtr_Status :: Text
  , usersUserSettingsXtr_NameRequest :: Maybe AccountNameRequest
  , usersUserSettingsXtr_RelationRequests :: Maybe [UsersUserMin]
  , usersUserSettingsXtr_Connections :: Maybe UsersUserConnections
  , usersUserSettingsXtr_LastName :: Maybe Text
  , usersUserSettingsXtr_FirstName :: Maybe Text
  , usersUserSettingsXtr_MaidenName :: Maybe Text
  , usersUserSettingsXtr_City :: Maybe BaseCity
  , usersUserSettingsXtr_ScreenName :: Maybe Text
  , usersUserSettingsXtr_Phone :: Maybe Text
  , usersUserSettingsXtr_Languages :: Maybe [Text]
  , usersUserSettingsXtr_Bdate :: Maybe Text
  , usersUserSettingsXtr_RelationPending :: Maybe BaseBoolInt
  , usersUserSettingsXtr_Sex :: Maybe BaseSex
  , usersUserSettingsXtr_Relation :: Maybe UsersUserRelation
  , usersUserSettingsXtr_Country :: Maybe BaseCountry
  , usersUserSettingsXtr_Personal :: Maybe UsersPersonal
  , usersUserSettingsXtr_Interests :: Maybe AccountUserSettingsInterests
  , usersUserSettingsXtr_StatusAudio :: Maybe AudioAudio
  , usersUserSettingsXtr_HomeTown :: Text
  } deriving (Show, Generic)

instance FromJSON UsersUserSettingsXtr where
  parseJSON = withObject "UsersUserSettingsXtr" \o -> UsersUserSettingsXtr
    <$> o .:? "relation_partner"
    <*> o .:? "bdate_visibility"
    <*> o .: "status"
    <*> o .:? "name_request"
    <*> o .:? "relation_requests"
    <*> o .:? "connections"
    <*> o .:? "last_name"
    <*> o .:? "first_name"
    <*> o .:? "maiden_name"
    <*> o .:? "city"
    <*> o .:? "screen_name"
    <*> o .:? "phone"
    <*> o .:? "languages"
    <*> o .:? "bdate"
    <*> o .:? "relation_pending"
    <*> o .:? "sex"
    <*> o .:? "relation"
    <*> o .:? "country"
    <*> o .:? "personal"
    <*> o .:? "interests"
    <*> o .:? "status_audio"
    <*> o .: "home_town"
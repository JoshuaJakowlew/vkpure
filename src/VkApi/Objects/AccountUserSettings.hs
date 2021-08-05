module VkApi.Objects.AccountUserSettings where

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

data AccountUserSettings = AccountUserSettings
  { accountUserSettings_Deactivated :: Maybe Text
  , accountUserSettings_Id :: Int
  , accountUserSettings_LastName :: Text
  , accountUserSettings_FirstName :: Text
  , accountUserSettings_IsClosed :: Maybe Bool
  , accountUserSettings_CanAccessClosed :: Maybe Bool
  , accountUserSettings_Hidden :: Maybe Int
  , accountUserSettings_RelationPartner :: Maybe UsersUserMin
  , accountUserSettings_BdateVisibility :: Maybe Int
  , accountUserSettings_Status :: Text
  , accountUserSettings_NameRequest :: Maybe AccountNameRequest
  , accountUserSettings_RelationRequests :: Maybe [UsersUserMin]
  , accountUserSettings_Connections :: Maybe UsersUserConnections
  , accountUserSettings_LastName :: Text
  , accountUserSettings_FirstName :: Text
  , accountUserSettings_MaidenName :: Maybe Text
  , accountUserSettings_City :: Maybe BaseCity
  , accountUserSettings_ScreenName :: Maybe Text
  , accountUserSettings_Phone :: Maybe Text
  , accountUserSettings_Languages :: Maybe [Text]
  , accountUserSettings_Bdate :: Maybe Text
  , accountUserSettings_RelationPending :: Maybe BaseBoolInt
  , accountUserSettings_Sex :: Maybe BaseSex
  , accountUserSettings_Relation :: Maybe UsersUserRelation
  , accountUserSettings_Country :: Maybe BaseCountry
  , accountUserSettings_Personal :: Maybe UsersPersonal
  , accountUserSettings_Interests :: Maybe AccountUserSettingsInterests
  , accountUserSettings_StatusAudio :: Maybe AudioAudio
  , accountUserSettings_HomeTown :: Text
  , accountUserSettings_Photo200 :: Maybe Text
  , accountUserSettings_IsServiceAccount :: Maybe Bool
  } deriving (Show, Generic)

instance FromJSON AccountUserSettings where
  parseJSON = withObject "AccountUserSettings" \o -> AccountUserSettings
    <$> o .:? "deactivated"
    <*> o .: "id"
    <*> o .: "last_name"
    <*> o .: "first_name"
    <*> o .:? "is_closed"
    <*> o .:? "can_access_closed"
    <*> o .:? "hidden"
    <*> o .:? "relation_partner"
    <*> o .:? "bdate_visibility"
    <*> o .: "status"
    <*> o .:? "name_request"
    <*> o .:? "relation_requests"
    <*> o .:? "connections"
    <*> o .: "last_name"
    <*> o .: "first_name"
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
    <*> o .:? "photo_200"
    <*> o .:? "is_service_account"
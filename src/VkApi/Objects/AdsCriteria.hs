module VkApi.Objects.AdsCriteria where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists
import VkApi.Objects.AdsCriteriaSex

data AdsCriteria = AdsCriteria
  { adsCriteria_AgeTo :: Maybe Int
  , adsCriteria_RetargetingGroupsNot :: Maybe Text
  , adsCriteria_Groups :: Maybe Text
  , adsCriteria_UserBrowsers :: Maybe Text
  , adsCriteria_Cities :: Maybe Text
  , adsCriteria_Stations :: Maybe Text
  , adsCriteria_Birthday :: Maybe Int
  , adsCriteria_UniTo :: Maybe Int
  , adsCriteria_CitiesNot :: Maybe Text
  , adsCriteria_Paying :: Maybe BaseBoolInt
  , adsCriteria_AppsNot :: Maybe Text
  , adsCriteria_Travellers :: Maybe BasePropertyExists
  , adsCriteria_UserDevices :: Maybe Text
  , adsCriteria_Apps :: Maybe Text
  , adsCriteria_Positions :: Maybe Text
  , adsCriteria_UserOs :: Maybe Text
  , adsCriteria_Schools :: Maybe Text
  , adsCriteria_InterestCategories :: Maybe Text
  , adsCriteria_Sex :: Maybe AdsCriteriaSex
  , adsCriteria_Religions :: Maybe Text
  , adsCriteria_UniFrom :: Maybe Int
  , adsCriteria_Country :: Maybe Int
  , adsCriteria_SchoolTo :: Maybe Int
  , adsCriteria_SchoolFrom :: Maybe Int
  , adsCriteria_Interests :: Maybe Text
  , adsCriteria_Districts :: Maybe Text
  , adsCriteria_RetargetingGroups :: Maybe Text
  , adsCriteria_Statuses :: Maybe Text
  , adsCriteria_Streets :: Maybe Text
  , adsCriteria_AgeFrom :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsCriteria where
  parseJSON = withObject "AdsCriteria" \o -> AdsCriteria
    <$> o .:? "age_to"
    <*> o .:? "retargeting_groups_not"
    <*> o .:? "groups"
    <*> o .:? "user_browsers"
    <*> o .:? "cities"
    <*> o .:? "stations"
    <*> o .:? "birthday"
    <*> o .:? "uni_to"
    <*> o .:? "cities_not"
    <*> o .:? "paying"
    <*> o .:? "apps_not"
    <*> o .:? "travellers"
    <*> o .:? "user_devices"
    <*> o .:? "apps"
    <*> o .:? "positions"
    <*> o .:? "user_os"
    <*> o .:? "schools"
    <*> o .:? "interest_categories"
    <*> o .:? "sex"
    <*> o .:? "religions"
    <*> o .:? "uni_from"
    <*> o .:? "country"
    <*> o .:? "school_to"
    <*> o .:? "school_from"
    <*> o .:? "interests"
    <*> o .:? "districts"
    <*> o .:? "retargeting_groups"
    <*> o .:? "statuses"
    <*> o .:? "streets"
    <*> o .:? "age_from"
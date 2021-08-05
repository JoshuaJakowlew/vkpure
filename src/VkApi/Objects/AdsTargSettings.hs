module VkApi.Objects.AdsTargSettings where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.BasePropertyExists
import VkApi.Objects.AdsCriteriaSex

data AdsTargSettings = AdsTargSettings
  { adsTargSettings_CampaignId :: Maybe Int
  , adsTargSettings_Id :: Maybe Int
  , adsTargSettings_AgeTo :: Maybe Int
  , adsTargSettings_RetargetingGroupsNot :: Maybe Text
  , adsTargSettings_Groups :: Maybe Text
  , adsTargSettings_UserBrowsers :: Maybe Text
  , adsTargSettings_Cities :: Maybe Text
  , adsTargSettings_Stations :: Maybe Text
  , adsTargSettings_Birthday :: Maybe Int
  , adsTargSettings_UniTo :: Maybe Int
  , adsTargSettings_CitiesNot :: Maybe Text
  , adsTargSettings_Paying :: Maybe BaseBoolInt
  , adsTargSettings_AppsNot :: Maybe Text
  , adsTargSettings_Travellers :: Maybe BasePropertyExists
  , adsTargSettings_UserDevices :: Maybe Text
  , adsTargSettings_Apps :: Maybe Text
  , adsTargSettings_Positions :: Maybe Text
  , adsTargSettings_UserOs :: Maybe Text
  , adsTargSettings_Schools :: Maybe Text
  , adsTargSettings_InterestCategories :: Maybe Text
  , adsTargSettings_Sex :: Maybe AdsCriteriaSex
  , adsTargSettings_Religions :: Maybe Text
  , adsTargSettings_UniFrom :: Maybe Int
  , adsTargSettings_Country :: Maybe Int
  , adsTargSettings_SchoolTo :: Maybe Int
  , adsTargSettings_SchoolFrom :: Maybe Int
  , adsTargSettings_Interests :: Maybe Text
  , adsTargSettings_Districts :: Maybe Text
  , adsTargSettings_RetargetingGroups :: Maybe Text
  , adsTargSettings_Statuses :: Maybe Text
  , adsTargSettings_Streets :: Maybe Text
  , adsTargSettings_AgeFrom :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsTargSettings where
  parseJSON = withObject "AdsTargSettings" \o -> AdsTargSettings
    <$> o .:? "campaign_id"
    <*> o .:? "id"
    <*> o .:? "age_to"
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
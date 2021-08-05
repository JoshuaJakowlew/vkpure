module VkApi.Objects.GroupsAddress where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsAddressTimetable
import VkApi.Objects.GroupsAddressWorkInfoStatus

data GroupsAddress = GroupsAddress
  { groupsAddress_PlaceId :: Maybe Int
  , groupsAddress_MetroStationId :: Maybe Int
  , groupsAddress_Address :: Maybe Text
  , groupsAddress_Longitude :: Maybe Double
  , groupsAddress_Timetable :: Maybe GroupsAddressTimetable
  , groupsAddress_WorkInfoStatus :: Maybe GroupsAddressWorkInfoStatus
  , groupsAddress_Distance :: Maybe Int
  , groupsAddress_Title :: Maybe Text
  , groupsAddress_Latitude :: Maybe Double
  , groupsAddress_CityId :: Maybe Int
  , groupsAddress_Id :: Int
  , groupsAddress_CountryId :: Maybe Int
  , groupsAddress_TimeOffset :: Maybe Int
  , groupsAddress_Phone :: Maybe Text
  , groupsAddress_AdditionalAddress :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON GroupsAddress where
  parseJSON = withObject "GroupsAddress" \o -> GroupsAddress
    <$> o .:? "place_id"
    <*> o .:? "metro_station_id"
    <*> o .:? "address"
    <*> o .:? "longitude"
    <*> o .:? "timetable"
    <*> o .:? "work_info_status"
    <*> o .:? "distance"
    <*> o .:? "title"
    <*> o .:? "latitude"
    <*> o .:? "city_id"
    <*> o .: "id"
    <*> o .:? "country_id"
    <*> o .:? "time_offset"
    <*> o .:? "phone"
    <*> o .:? "additional_address"
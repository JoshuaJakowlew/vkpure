module VkApi.Objects.AddressesFields where

import VkApi.Objects.Utils



data AddressesFields = AddressesFieldsId | AddressesFieldsTitle | AddressesFieldsAddress | AddressesFieldsAdditionalAddress | AddressesFieldsCountryId | AddressesFieldsCityId | AddressesFieldsMetroStationId | AddressesFieldsLatitude | AddressesFieldsLongitude | AddressesFieldsDistance | AddressesFieldsWorkInfoStatus | AddressesFieldsTimetable | AddressesFieldsPhone | AddressesFieldsTimeOffset
  deriving (Show, Generic)

instance FromJSON AddressesFields where
  parseJSON = withText "AddressesFields" \ t -> case t of 
    "id" -> pure AddressesFieldsId
    "title" -> pure AddressesFieldsTitle
    "address" -> pure AddressesFieldsAddress
    "additional_address" -> pure AddressesFieldsAdditionalAddress
    "country_id" -> pure AddressesFieldsCountryId
    "city_id" -> pure AddressesFieldsCityId
    "metro_station_id" -> pure AddressesFieldsMetroStationId
    "latitude" -> pure AddressesFieldsLatitude
    "longitude" -> pure AddressesFieldsLongitude
    "distance" -> pure AddressesFieldsDistance
    "work_info_status" -> pure AddressesFieldsWorkInfoStatus
    "timetable" -> pure AddressesFieldsTimetable
    "phone" -> pure AddressesFieldsPhone
    "time_offset" -> pure AddressesFieldsTimeOffset
    _ -> fail "AddressesFields: doesnt match case"

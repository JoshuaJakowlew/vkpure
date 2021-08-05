module VkApi.Objects.GroupsAddressWorkInfoStatus where

import VkApi.Objects.Utils



data GroupsAddressWorkInfoStatus = GroupsAddressWorkInfoStatusNoInformation | GroupsAddressWorkInfoStatusTemporarilyClosed | GroupsAddressWorkInfoStatusAlwaysOpened | GroupsAddressWorkInfoStatusTimetable | GroupsAddressWorkInfoStatusForeverClosed
  deriving (Show, Generic)

instance FromJSON GroupsAddressWorkInfoStatus where
  parseJSON = withText "GroupsAddressWorkInfoStatus" \ t -> case t of 
    "no_information" -> pure GroupsAddressWorkInfoStatusNoInformation
    "temporarily_closed" -> pure GroupsAddressWorkInfoStatusTemporarilyClosed
    "always_opened" -> pure GroupsAddressWorkInfoStatusAlwaysOpened
    "timetable" -> pure GroupsAddressWorkInfoStatusTimetable
    "forever_closed" -> pure GroupsAddressWorkInfoStatusForeverClosed
    _ -> fail "GroupsAddressWorkInfoStatus: doesnt match case"

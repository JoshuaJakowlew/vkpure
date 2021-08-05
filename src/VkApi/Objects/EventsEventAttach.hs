module VkApi.Objects.EventsEventAttach where

import VkApi.Objects.Utils

import VkApi.Objects.GroupsGroupFullMemberStatus

data EventsEventAttach = EventsEventAttach
  { eventsEventAttach_Friends :: [Int]
  , eventsEventAttach_IsFavorite :: Bool
  , eventsEventAttach_Address :: Maybe Text
  , eventsEventAttach_Id :: Int
  , eventsEventAttach_ButtonText :: Text
  , eventsEventAttach_MemberStatus :: Maybe GroupsGroupFullMemberStatus
  , eventsEventAttach_Time :: Maybe Int
  , eventsEventAttach_Text :: Text
  } deriving (Show, Generic)

instance FromJSON EventsEventAttach where
  parseJSON = withObject "EventsEventAttach" \o -> EventsEventAttach
    <$> o .: "friends"
    <*> o .: "is_favorite"
    <*> o .:? "address"
    <*> o .: "id"
    <*> o .: "button_text"
    <*> o .:? "member_status"
    <*> o .:? "time"
    <*> o .: "text"
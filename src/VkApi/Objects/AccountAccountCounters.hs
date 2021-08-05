module VkApi.Objects.AccountAccountCounters where

import VkApi.Objects.Utils



data AccountAccountCounters = AccountAccountCounters
  { accountAccountCounters_Groups :: Maybe Int
  , accountAccountCounters_Friends :: Maybe Int
  , accountAccountCounters_Notes :: Maybe Int
  , accountAccountCounters_MenuClipsBadge :: Maybe Int
  , accountAccountCounters_Memories :: Maybe Int
  , accountAccountCounters_Photos :: Maybe Int
  , accountAccountCounters_Gifts :: Maybe Int
  , accountAccountCounters_Faves :: Maybe Int
  , accountAccountCounters_Events :: Maybe Int
  , accountAccountCounters_Sdk :: Maybe Int
  , accountAccountCounters_AppRequests :: Maybe Int
  , accountAccountCounters_FriendsRecommendations :: Maybe Int
  , accountAccountCounters_FriendsSuggestions :: Maybe Int
  , accountAccountCounters_Notifications :: Maybe Int
  , accountAccountCounters_Messages :: Maybe Int
  , accountAccountCounters_MenuDiscoverBadge :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AccountAccountCounters where
  parseJSON = withObject "AccountAccountCounters" \o -> AccountAccountCounters
    <$> o .:? "groups"
    <*> o .:? "friends"
    <*> o .:? "notes"
    <*> o .:? "menu_clips_badge"
    <*> o .:? "memories"
    <*> o .:? "photos"
    <*> o .:? "gifts"
    <*> o .:? "faves"
    <*> o .:? "events"
    <*> o .:? "sdk"
    <*> o .:? "app_requests"
    <*> o .:? "friends_recommendations"
    <*> o .:? "friends_suggestions"
    <*> o .:? "notifications"
    <*> o .:? "messages"
    <*> o .:? "menu_discover_badge"
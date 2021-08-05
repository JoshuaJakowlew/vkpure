module VkApi.Objects.GroupsCallbackServer where

import VkApi.Objects.Utils



data GroupsCallbackServer = GroupsCallbackServer
  { groupsCallbackServer_Status :: Text
  , groupsCallbackServer_CreatorId :: Int
  , groupsCallbackServer_SecretKey :: Text
  , groupsCallbackServer_Title :: Text
  , groupsCallbackServer_Id :: Int
  , groupsCallbackServer_Url :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsCallbackServer where
  parseJSON = withObject "GroupsCallbackServer" \o -> GroupsCallbackServer
    <$> o .: "status"
    <*> o .: "creator_id"
    <*> o .: "secret_key"
    <*> o .: "title"
    <*> o .: "id"
    <*> o .: "url"
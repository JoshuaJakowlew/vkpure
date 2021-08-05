module VkApi.Objects.GroupsLongPollServer where

import VkApi.Objects.Utils



data GroupsLongPollServer = GroupsLongPollServer
  { groupsLongPollServer_Ts :: Text
  , groupsLongPollServer_Key :: Text
  , groupsLongPollServer_Server :: Text
  } deriving (Show, Generic)

instance FromJSON GroupsLongPollServer where
  parseJSON = withObject "GroupsLongPollServer" \o -> GroupsLongPollServer
    <$> o .: "ts"
    <*> o .: "key"
    <*> o .: "server"
module VkApi.Objects.CallsParticipants where

import VkApi.Objects.Utils



data CallsParticipants = CallsParticipants
  { callsParticipants_List :: Maybe [Int]
  , callsParticipants_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON CallsParticipants where
  parseJSON = withObject "CallsParticipants" \o -> CallsParticipants
    <$> o .:? "list"
    <*> o .:? "count"
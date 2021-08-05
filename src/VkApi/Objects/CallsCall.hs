module VkApi.Objects.CallsCall where

import VkApi.Objects.Utils

import VkApi.Objects.CallsEndState
import VkApi.Objects.CallsParticipants

data CallsCall = CallsCall
  { callsCall_Duration :: Maybe Int
  , callsCall_ReceiverId :: Int
  , callsCall_State :: CallsEndState
  , callsCall_Participants :: Maybe CallsParticipants
  , callsCall_InitiatorId :: Int
  , callsCall_Video :: Maybe Bool
  , callsCall_Time :: Int
  } deriving (Show, Generic)

instance FromJSON CallsCall where
  parseJSON = withObject "CallsCall" \o -> CallsCall
    <$> o .:? "duration"
    <*> o .: "receiver_id"
    <*> o .: "state"
    <*> o .:? "participants"
    <*> o .: "initiator_id"
    <*> o .:? "video"
    <*> o .: "time"
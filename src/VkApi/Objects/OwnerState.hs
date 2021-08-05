module VkApi.Objects.OwnerState where

import VkApi.Objects.Utils



data OwnerState = OwnerState
  { ownerState_State :: Maybe Int
  , ownerState_Description :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON OwnerState where
  parseJSON = withObject "OwnerState" \o -> OwnerState
    <$> o .:? "state"
    <*> o .:? "description"
module VkApi.Objects.AdsAccesses where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAccessRole

data AdsAccesses = AdsAccesses
  { adsAccesses_Role :: Maybe AdsAccessRole
  , adsAccesses_ClientId :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsAccesses where
  parseJSON = withObject "AdsAccesses" \o -> AdsAccesses
    <$> o .:? "role"
    <*> o .:? "client_id"
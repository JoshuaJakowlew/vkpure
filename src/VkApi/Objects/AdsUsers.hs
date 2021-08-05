module VkApi.Objects.AdsUsers where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAccesses

data AdsUsers = AdsUsers
  { adsUsers_UserId :: Int
  , adsUsers_Accesses :: [AdsAccesses]
  } deriving (Show, Generic)

instance FromJSON AdsUsers where
  parseJSON = withObject "AdsUsers" \o -> AdsUsers
    <$> o .: "user_id"
    <*> o .: "accesses"
module VkApi.Objects.AdsMusician where

import VkApi.Objects.Utils



data AdsMusician = AdsMusician
  { adsMusician_Id :: Int
  , adsMusician_Name :: Text
  , adsMusician_Avatar :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsMusician where
  parseJSON = withObject "AdsMusician" \o -> AdsMusician
    <$> o .: "id"
    <*> o .: "name"
    <*> o .:? "avatar"
module VkApi.Objects.AdsClient where

import VkApi.Objects.Utils



data AdsClient = AdsClient
  { adsClient_AllLimit :: Text
  , adsClient_Id :: Int
  , adsClient_Name :: Text
  , adsClient_DayLimit :: Text
  } deriving (Show, Generic)

instance FromJSON AdsClient where
  parseJSON = withObject "AdsClient" \o -> AdsClient
    <$> o .: "all_limit"
    <*> o .: "id"
    <*> o .: "name"
    <*> o .: "day_limit"
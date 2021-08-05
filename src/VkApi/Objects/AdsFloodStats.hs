module VkApi.Objects.AdsFloodStats where

import VkApi.Objects.Utils



data AdsFloodStats = AdsFloodStats
  { adsFloodStats_Left :: Int
  , adsFloodStats_Refresh :: Int
  } deriving (Show, Generic)

instance FromJSON AdsFloodStats where
  parseJSON = withObject "AdsFloodStats" \o -> AdsFloodStats
    <$> o .: "left"
    <*> o .: "refresh"
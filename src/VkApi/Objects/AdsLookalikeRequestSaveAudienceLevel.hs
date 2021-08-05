module VkApi.Objects.AdsLookalikeRequestSaveAudienceLevel where

import VkApi.Objects.Utils



data AdsLookalikeRequestSaveAudienceLevel = AdsLookalikeRequestSaveAudienceLevel
  { adsLookalikeRequestSaveAudienceLevel_AudienceCount :: Maybe Int
  , adsLookalikeRequestSaveAudienceLevel_Level :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsLookalikeRequestSaveAudienceLevel where
  parseJSON = withObject "AdsLookalikeRequestSaveAudienceLevel" \o -> AdsLookalikeRequestSaveAudienceLevel
    <$> o .:? "audience_count"
    <*> o .:? "level"
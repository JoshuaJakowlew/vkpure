module VkApi.Objects.AdsLinkStatus where

import VkApi.Objects.Utils



data AdsLinkStatus = AdsLinkStatus
  { adsLinkStatus_Status :: Text
  , adsLinkStatus_Description :: Text
  , adsLinkStatus_RedirectUrl :: Text
  } deriving (Show, Generic)

instance FromJSON AdsLinkStatus where
  parseJSON = withObject "AdsLinkStatus" \o -> AdsLinkStatus
    <$> o .: "status"
    <*> o .: "description"
    <*> o .: "redirect_url"
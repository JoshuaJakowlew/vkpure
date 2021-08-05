module VkApi.Objects.AdswebGetsitesResponseSitesSite where

import VkApi.Objects.Utils



data AdswebGetsitesResponseSitesSite = AdswebGetsitesResponseSitesSite
  { adswebGetsitesResponseSitesSite_Domains :: Maybe Text
  , adswebGetsitesResponseSitesSite_Id :: Int
  , adswebGetsitesResponseSitesSite_StatusModer :: Maybe Text
  , adswebGetsitesResponseSitesSite_StatusUser :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdswebGetsitesResponseSitesSite where
  parseJSON = withObject "AdswebGetsitesResponseSitesSite" \o -> AdswebGetsitesResponseSitesSite
    <$> o .:? "domains"
    <*> o .: "id"
    <*> o .:? "status_moder"
    <*> o .:? "status_user"
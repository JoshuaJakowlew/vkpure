module VkApi.Objects.AdsObjectType where

import VkApi.Objects.Utils



data AdsObjectType = AdsObjectTypeAd | AdsObjectTypeCampaign | AdsObjectTypeClient | AdsObjectTypeOffice
  deriving (Show, Generic)

instance FromJSON AdsObjectType where
  parseJSON = withText "AdsObjectType" \ t -> case t of 
    "ad" -> pure AdsObjectTypeAd
    "campaign" -> pure AdsObjectTypeCampaign
    "client" -> pure AdsObjectTypeClient
    "office" -> pure AdsObjectTypeOffice
    _ -> fail "AdsObjectType: doesnt match case"

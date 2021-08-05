module VkApi.Objects.AdsAccountType where

import VkApi.Objects.Utils



data AdsAccountType = AdsAccountTypeGeneral | AdsAccountTypeAgency
  deriving (Show, Generic)

instance FromJSON AdsAccountType where
  parseJSON = withText "AdsAccountType" \ t -> case t of 
    "general" -> pure AdsAccountTypeGeneral
    "agency" -> pure AdsAccountTypeAgency
    _ -> fail "AdsAccountType: doesnt match case"

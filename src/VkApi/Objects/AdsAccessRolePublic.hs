module VkApi.Objects.AdsAccessRolePublic where

import VkApi.Objects.Utils



data AdsAccessRolePublic = AdsAccessRolePublicManager | AdsAccessRolePublicReports
  deriving (Show, Generic)

instance FromJSON AdsAccessRolePublic where
  parseJSON = withText "AdsAccessRolePublic" \ t -> case t of 
    "manager" -> pure AdsAccessRolePublicManager
    "reports" -> pure AdsAccessRolePublicReports
    _ -> fail "AdsAccessRolePublic: doesnt match case"

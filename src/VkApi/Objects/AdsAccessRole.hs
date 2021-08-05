module VkApi.Objects.AdsAccessRole where

import VkApi.Objects.Utils



data AdsAccessRole = AdsAccessRoleAdmin | AdsAccessRoleManager | AdsAccessRoleReports
  deriving (Show, Generic)

instance FromJSON AdsAccessRole where
  parseJSON = withText "AdsAccessRole" \ t -> case t of 
    "admin" -> pure AdsAccessRoleAdmin
    "manager" -> pure AdsAccessRoleManager
    "reports" -> pure AdsAccessRoleReports
    _ -> fail "AdsAccessRole: doesnt match case"

module VkApi.Objects.AdsUserSpecification where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAccessRolePublic

data AdsUserSpecification = AdsUserSpecification
  { adsUserSpecification_ViewBudget :: Maybe Bool
  , adsUserSpecification_UserId :: Int
  , adsUserSpecification_ClientIds :: Maybe [Int]
  , adsUserSpecification_GrantAccessToAllClients :: Maybe Bool
  , adsUserSpecification_Role :: AdsAccessRolePublic
  } deriving (Show, Generic)

instance FromJSON AdsUserSpecification where
  parseJSON = withObject "AdsUserSpecification" \o -> AdsUserSpecification
    <$> o .:? "view_budget"
    <*> o .: "user_id"
    <*> o .:? "client_ids"
    <*> o .:? "grant_access_to_all_clients"
    <*> o .: "role"
module VkApi.Objects.AdsUserSpecificationCutted where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAccessRolePublic

data AdsUserSpecificationCutted = AdsUserSpecificationCutted
  { adsUserSpecificationCutted_ViewBudget :: Maybe Bool
  , adsUserSpecificationCutted_UserId :: Int
  , adsUserSpecificationCutted_Role :: AdsAccessRolePublic
  , adsUserSpecificationCutted_ClientId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsUserSpecificationCutted where
  parseJSON = withObject "AdsUserSpecificationCutted" \o -> AdsUserSpecificationCutted
    <$> o .:? "view_budget"
    <*> o .: "user_id"
    <*> o .: "role"
    <*> o .:? "client_id"
module VkApi.Objects.AdsAccount where

import VkApi.Objects.Utils

import VkApi.Objects.BaseBoolInt
import VkApi.Objects.AdsAccessRole
import VkApi.Objects.AdsAccountType

data AdsAccount = AdsAccount
  { adsAccount_AccountStatus :: BaseBoolInt
  , adsAccount_AccessRole :: AdsAccessRole
  , adsAccount_CanViewBudget :: Bool
  , adsAccount_AccountName :: Text
  , adsAccount_AccountType :: AdsAccountType
  , adsAccount_AccountId :: Int
  } deriving (Show, Generic)

instance FromJSON AdsAccount where
  parseJSON = withObject "AdsAccount" \o -> AdsAccount
    <$> o .: "account_status"
    <*> o .: "access_role"
    <*> o .: "can_view_budget"
    <*> o .: "account_name"
    <*> o .: "account_type"
    <*> o .: "account_id"
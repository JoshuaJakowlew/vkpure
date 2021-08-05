module VkApi.Objects.AdsAd where

import VkApi.Objects.Utils

import VkApi.Objects.AdsAdStatus
import VkApi.Objects.AdsAdCostType
import VkApi.Objects.BaseBoolInt
import VkApi.Objects.AdsAdApproved

data AdsAd = AdsAd
  { adsAd_Status :: AdsAdStatus
  , adsAd_CostType :: AdsAdCostType
  , adsAd_CampaignId :: Int
  , adsAd_Cpm :: Maybe Int
  , adsAd_AutobiddingMaxCost :: Maybe Int
  , adsAd_DisclaimerSpecialist :: Maybe BaseBoolInt
  , adsAd_AllLimit :: Int
  , adsAd_Id :: Int
  , adsAd_AdPlatform :: Maybe IntOrString
  , adsAd_ImpressionsLimit :: Maybe Int
  , adsAd_DisclaimerSupplements :: Maybe BaseBoolInt
  , adsAd_Cpa :: Maybe Int
  , adsAd_Name :: Text
  , adsAd_DisclaimerMedical :: Maybe BaseBoolInt
  , adsAd_Ocpm :: Maybe Int
  , adsAd_Video :: Maybe BaseBoolInt
  , adsAd_AdFormat :: Int
  , adsAd_Approved :: AdsAdApproved
  , adsAd_Category1Id :: Maybe Int
  , adsAd_ImpressionsLimited :: Maybe BaseBoolInt
  , adsAd_Category2Id :: Maybe Int
  , adsAd_Cpc :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON AdsAd where
  parseJSON = withObject "AdsAd" \o -> AdsAd
    <$> o .: "status"
    <*> o .: "cost_type"
    <*> o .: "campaign_id"
    <*> o .:? "cpm"
    <*> o .:? "autobidding_max_cost"
    <*> o .:? "disclaimer_specialist"
    <*> o .: "all_limit"
    <*> o .: "id"
    <*> o .:? "ad_platform"
    <*> o .:? "impressions_limit"
    <*> o .:? "disclaimer_supplements"
    <*> o .:? "cpa"
    <*> o .: "name"
    <*> o .:? "disclaimer_medical"
    <*> o .:? "ocpm"
    <*> o .:? "video"
    <*> o .: "ad_format"
    <*> o .: "approved"
    <*> o .:? "category1_id"
    <*> o .:? "impressions_limited"
    <*> o .:? "category2_id"
    <*> o .:? "cpc"
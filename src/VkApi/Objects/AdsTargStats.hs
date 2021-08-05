module VkApi.Objects.AdsTargStats where

import VkApi.Objects.Utils



data AdsTargStats = AdsTargStats
  { adsTargStats_RecommendedCpm70 :: Maybe Double
  , adsTargStats_RecommendedCpc90 :: Maybe Double
  , adsTargStats_AudienceCount :: Int
  , adsTargStats_RecommendedCpc50 :: Maybe Double
  , adsTargStats_RecommendedCpc :: Maybe Double
  , adsTargStats_RecommendedCpm :: Maybe Double
  , adsTargStats_RecommendedCpm50 :: Maybe Double
  , adsTargStats_RecommendedCpc70 :: Maybe Double
  , adsTargStats_RecommendedCpm90 :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON AdsTargStats where
  parseJSON = withObject "AdsTargStats" \o -> AdsTargStats
    <$> o .:? "recommended_cpm_70"
    <*> o .:? "recommended_cpc_90"
    <*> o .: "audience_count"
    <*> o .:? "recommended_cpc_50"
    <*> o .:? "recommended_cpc"
    <*> o .:? "recommended_cpm"
    <*> o .:? "recommended_cpm_50"
    <*> o .:? "recommended_cpc_70"
    <*> o .:? "recommended_cpm_90"
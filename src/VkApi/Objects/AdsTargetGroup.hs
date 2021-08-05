module VkApi.Objects.AdsTargetGroup where

import VkApi.Objects.Utils



data AdsTargetGroup = AdsTargetGroup
  { adsTargetGroup_Lifetime :: Maybe Int
  , adsTargetGroup_Pixel :: Maybe Text
  , adsTargetGroup_AudienceCount :: Maybe Int
  , adsTargetGroup_Domain :: Maybe Text
  , adsTargetGroup_Id :: Maybe Int
  , adsTargetGroup_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON AdsTargetGroup where
  parseJSON = withObject "AdsTargetGroup" \o -> AdsTargetGroup
    <$> o .:? "lifetime"
    <*> o .:? "pixel"
    <*> o .:? "audience_count"
    <*> o .:? "domain"
    <*> o .:? "id"
    <*> o .:? "name"
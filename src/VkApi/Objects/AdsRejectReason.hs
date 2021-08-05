module VkApi.Objects.AdsRejectReason where

import VkApi.Objects.Utils

import VkApi.Objects.AdsRules

data AdsRejectReason = AdsRejectReason
  { adsRejectReason_Comment :: Maybe Text
  , adsRejectReason_Rules :: Maybe [AdsRules]
  } deriving (Show, Generic)

instance FromJSON AdsRejectReason where
  parseJSON = withObject "AdsRejectReason" \o -> AdsRejectReason
    <$> o .:? "comment"
    <*> o .:? "rules"
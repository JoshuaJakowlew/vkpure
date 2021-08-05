module VkApi.Objects.AdsLookalikeRequest where

import VkApi.Objects.Utils

import VkApi.Objects.AdsLookalikeRequestSaveAudienceLevel

data AdsLookalikeRequest = AdsLookalikeRequest
  { adsLookalikeRequest_Status :: Text
  , adsLookalikeRequest_UpdateTime :: Int
  , adsLookalikeRequest_AudienceCount :: Maybe Int
  , adsLookalikeRequest_Id :: Int
  , adsLookalikeRequest_SourceName :: Maybe Text
  , adsLookalikeRequest_CreateTime :: Int
  , adsLookalikeRequest_SourceRetargetingGroupId :: Maybe Int
  , adsLookalikeRequest_SaveAudienceLevels :: Maybe [AdsLookalikeRequestSaveAudienceLevel]
  , adsLookalikeRequest_ScheduledDeleteTime :: Maybe Int
  , adsLookalikeRequest_SourceType :: Text
  } deriving (Show, Generic)

instance FromJSON AdsLookalikeRequest where
  parseJSON = withObject "AdsLookalikeRequest" \o -> AdsLookalikeRequest
    <$> o .: "status"
    <*> o .: "update_time"
    <*> o .:? "audience_count"
    <*> o .: "id"
    <*> o .:? "source_name"
    <*> o .: "create_time"
    <*> o .:? "source_retargeting_group_id"
    <*> o .:? "save_audience_levels"
    <*> o .:? "scheduled_delete_time"
    <*> o .: "source_type"
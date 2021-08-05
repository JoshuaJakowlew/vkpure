module VkApi.Objects.AdsCampaign where

import VkApi.Objects.Utils

import VkApi.Objects.AdsCampaignStatus
import VkApi.Objects.AdsCampaignType

data AdsCampaign = AdsCampaign
  { adsCampaign_Status :: AdsCampaignStatus
  , adsCampaign_UserGoalType :: Maybe Int
  , adsCampaign_IsCboEnabled :: Maybe Bool
  , adsCampaign_UpdateTime :: Maybe Int
  , adsCampaign_AllLimit :: Text
  , adsCampaign_Id :: Int
  , adsCampaign_Name :: Text
  , adsCampaign_ViewsLimit :: Maybe Int
  , adsCampaign_DayLimit :: Text
  , adsCampaign_CreateTime :: Maybe Int
  , adsCampaign_Type :: AdsCampaignType
  , adsCampaign_AdsCount :: Maybe Int
  , adsCampaign_StopTime :: Int
  , adsCampaign_GoalType :: Maybe Int
  , adsCampaign_StartTime :: Int
  } deriving (Show, Generic)

instance FromJSON AdsCampaign where
  parseJSON = withObject "AdsCampaign" \o -> AdsCampaign
    <$> o .: "status"
    <*> o .:? "user_goal_type"
    <*> o .:? "is_cbo_enabled"
    <*> o .:? "update_time"
    <*> o .: "all_limit"
    <*> o .: "id"
    <*> o .: "name"
    <*> o .:? "views_limit"
    <*> o .: "day_limit"
    <*> o .:? "create_time"
    <*> o .: "type"
    <*> o .:? "ads_count"
    <*> o .: "stop_time"
    <*> o .:? "goal_type"
    <*> o .: "start_time"
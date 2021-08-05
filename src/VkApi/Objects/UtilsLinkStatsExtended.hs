module VkApi.Objects.UtilsLinkStatsExtended where

import VkApi.Objects.Utils

import VkApi.Objects.UtilsStatsExtended

data UtilsLinkStatsExtended = UtilsLinkStatsExtended
  { utilsLinkStatsExtended_Key :: Maybe Text
  , utilsLinkStatsExtended_Stats :: Maybe [UtilsStatsExtended]
  } deriving (Show, Generic)

instance FromJSON UtilsLinkStatsExtended where
  parseJSON = withObject "UtilsLinkStatsExtended" \o -> UtilsLinkStatsExtended
    <$> o .:? "key"
    <*> o .:? "stats"
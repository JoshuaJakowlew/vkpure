module VkApi.Objects.UtilsLinkStats where

import VkApi.Objects.Utils

import VkApi.Objects.UtilsStats

data UtilsLinkStats = UtilsLinkStats
  { utilsLinkStats_Key :: Maybe Text
  , utilsLinkStats_Stats :: Maybe [UtilsStats]
  } deriving (Show, Generic)

instance FromJSON UtilsLinkStats where
  parseJSON = withObject "UtilsLinkStats" \o -> UtilsLinkStats
    <$> o .:? "key"
    <*> o .:? "stats"
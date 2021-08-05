module VkApi.Objects.UtilsStats where

import VkApi.Objects.Utils



data UtilsStats = UtilsStats
  { utilsStats_Views :: Maybe Int
  , utilsStats_Timestamp :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UtilsStats where
  parseJSON = withObject "UtilsStats" \o -> UtilsStats
    <$> o .:? "views"
    <*> o .:? "timestamp"
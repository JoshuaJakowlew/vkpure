module VkApi.Objects.BaseObjectCount where

import VkApi.Objects.Utils



data BaseObjectCount = BaseObjectCount
  { baseObjectCount_Count :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON BaseObjectCount where
  parseJSON = withObject "BaseObjectCount" \o -> BaseObjectCount
    <$> o .:? "count"
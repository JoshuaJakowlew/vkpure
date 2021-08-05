module VkApi.Objects.BaseRequestParam where

import VkApi.Objects.Utils



data BaseRequestParam = BaseRequestParam
  { baseRequestParam_Key :: Maybe Text
  , baseRequestParam_Value :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseRequestParam where
  parseJSON = withObject "BaseRequestParam" \o -> BaseRequestParam
    <$> o .:? "key"
    <*> o .:? "value"
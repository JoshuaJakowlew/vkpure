module VkApi.Objects.BaseMessageError where

import VkApi.Objects.Utils



data BaseMessageError = BaseMessageError
  { baseMessageError_Code :: Maybe Int
  , baseMessageError_Description :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseMessageError where
  parseJSON = withObject "BaseMessageError" \o -> BaseMessageError
    <$> o .:? "code"
    <*> o .:? "description"
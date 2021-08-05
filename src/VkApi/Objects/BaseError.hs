module VkApi.Objects.BaseError where

import VkApi.Objects.Utils

import VkApi.Objects.BaseRequestParam

data BaseError = BaseError
  { baseError_ErrorSubcode :: Maybe Int
  , baseError_RequestParams :: Maybe [BaseRequestParam]
  , baseError_ErrorCode :: Maybe Int
  , baseError_ErrorMsg :: Maybe Text
  , baseError_ErrorText :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseError where
  parseJSON = withObject "BaseError" \o -> BaseError
    <$> o .:? "error_subcode"
    <*> o .:? "request_params"
    <*> o .:? "error_code"
    <*> o .:? "error_msg"
    <*> o .:? "error_text"
module VkApi.Objects.BaseLinkButtonAction where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLinkButtonActionType

data BaseLinkButtonAction = BaseLinkButtonAction
  { baseLinkButtonAction_ConsumeReason :: Maybe Text
  , baseLinkButtonAction_Url :: Maybe Text
  , baseLinkButtonAction_Type :: BaseLinkButtonActionType
  } deriving (Show, Generic)

instance FromJSON BaseLinkButtonAction where
  parseJSON = withObject "BaseLinkButtonAction" \o -> BaseLinkButtonAction
    <$> o .:? "consume_reason"
    <*> o .:? "url"
    <*> o .: "type"
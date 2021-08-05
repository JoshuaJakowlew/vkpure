module VkApi.Objects.UtilsLinkChecked where

import VkApi.Objects.Utils

import VkApi.Objects.UtilsLinkCheckedStatus

data UtilsLinkChecked = UtilsLinkChecked
  { utilsLinkChecked_Status :: Maybe UtilsLinkCheckedStatus
  , utilsLinkChecked_Link :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON UtilsLinkChecked where
  parseJSON = withObject "UtilsLinkChecked" \o -> UtilsLinkChecked
    <$> o .:? "status"
    <*> o .:? "link"
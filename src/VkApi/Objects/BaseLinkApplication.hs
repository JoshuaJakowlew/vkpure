module VkApi.Objects.BaseLinkApplication where

import VkApi.Objects.Utils

import VkApi.Objects.BaseLinkApplicationStore

data BaseLinkApplication = BaseLinkApplication
  { baseLinkApplication_Store :: Maybe BaseLinkApplicationStore
  , baseLinkApplication_AppId :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON BaseLinkApplication where
  parseJSON = withObject "BaseLinkApplication" \o -> BaseLinkApplication
    <$> o .:? "store"
    <*> o .:? "app_id"
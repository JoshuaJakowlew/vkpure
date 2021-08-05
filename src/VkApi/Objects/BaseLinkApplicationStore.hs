module VkApi.Objects.BaseLinkApplicationStore where

import VkApi.Objects.Utils



data BaseLinkApplicationStore = BaseLinkApplicationStore
  { baseLinkApplicationStore_Id :: Maybe Double
  , baseLinkApplicationStore_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON BaseLinkApplicationStore where
  parseJSON = withObject "BaseLinkApplicationStore" \o -> BaseLinkApplicationStore
    <$> o .:? "id"
    <*> o .:? "name"
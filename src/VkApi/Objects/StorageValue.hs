module VkApi.Objects.StorageValue where

import VkApi.Objects.Utils



data StorageValue = StorageValue
  { storageValue_Key :: Text
  , storageValue_Value :: Text
  } deriving (Show, Generic)

instance FromJSON StorageValue where
  parseJSON = withObject "StorageValue" \o -> StorageValue
    <$> o .: "key"
    <*> o .: "value"
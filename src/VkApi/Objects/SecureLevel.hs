module VkApi.Objects.SecureLevel where

import VkApi.Objects.Utils



data SecureLevel = SecureLevel
  { secureLevel_Level :: Maybe Int
  , secureLevel_Uid :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON SecureLevel where
  parseJSON = withObject "SecureLevel" \o -> SecureLevel
    <$> o .:? "level"
    <*> o .:? "uid"
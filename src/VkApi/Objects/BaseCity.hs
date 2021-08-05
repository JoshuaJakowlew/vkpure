module VkApi.Objects.BaseCity where

import VkApi.Objects.Utils



data BaseCity = BaseCity
  { baseCity_Title :: Text
  , baseCity_Id :: Int
  } deriving (Show, Generic)

instance FromJSON BaseCity where
  parseJSON = withObject "BaseCity" \o -> BaseCity
    <$> o .: "title"
    <*> o .: "id"
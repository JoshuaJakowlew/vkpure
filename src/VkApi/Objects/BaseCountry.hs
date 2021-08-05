module VkApi.Objects.BaseCountry where

import VkApi.Objects.Utils



data BaseCountry = BaseCountry
  { baseCountry_Title :: Text
  , baseCountry_Id :: Int
  } deriving (Show, Generic)

instance FromJSON BaseCountry where
  parseJSON = withObject "BaseCountry" \o -> BaseCountry
    <$> o .: "title"
    <*> o .: "id"
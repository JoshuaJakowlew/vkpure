module VkApi.Objects.BaseObjectWithName where

import VkApi.Objects.Utils



data BaseObjectWithName = BaseObjectWithName
  { baseObjectWithName_Id :: Int
  , baseObjectWithName_Name :: Text
  } deriving (Show, Generic)

instance FromJSON BaseObjectWithName where
  parseJSON = withObject "BaseObjectWithName" \o -> BaseObjectWithName
    <$> o .: "id"
    <*> o .: "name"
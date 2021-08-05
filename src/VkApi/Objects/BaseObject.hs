module VkApi.Objects.BaseObject where

import VkApi.Objects.Utils



data BaseObject = BaseObject
  { baseObject_Title :: Text
  , baseObject_Id :: Int
  } deriving (Show, Generic)

instance FromJSON BaseObject where
  parseJSON = withObject "BaseObject" \o -> BaseObject
    <$> o .: "title"
    <*> o .: "id"
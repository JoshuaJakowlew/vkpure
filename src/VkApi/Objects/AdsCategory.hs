module VkApi.Objects.AdsCategory where

import VkApi.Objects.Utils

import VkApi.Objects.BaseObjectWithName

data AdsCategory = AdsCategory
  { adsCategory_Id :: Int
  , adsCategory_Subcategories :: Maybe [BaseObjectWithName]
  , adsCategory_Name :: Text
  } deriving (Show, Generic)

instance FromJSON AdsCategory where
  parseJSON = withObject "AdsCategory" \o -> AdsCategory
    <$> o .: "id"
    <*> o .:? "subcategories"
    <*> o .: "name"
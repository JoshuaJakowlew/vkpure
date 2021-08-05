module VkApi.Objects.AdswebGetadcategoriesResponseCategoriesCategory where

import VkApi.Objects.Utils



data AdswebGetadcategoriesResponseCategoriesCategory = AdswebGetadcategoriesResponseCategoriesCategory
  { adswebGetadcategoriesResponseCategoriesCategory_Id :: Int
  , adswebGetadcategoriesResponseCategoriesCategory_Name :: Text
  } deriving (Show, Generic)

instance FromJSON AdswebGetadcategoriesResponseCategoriesCategory where
  parseJSON = withObject "AdswebGetadcategoriesResponseCategoriesCategory" \o -> AdswebGetadcategoriesResponseCategoriesCategory
    <$> o .: "id"
    <*> o .: "name"
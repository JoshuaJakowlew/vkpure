module VkApi.Objects.UtilsStatsSexAge where

import VkApi.Objects.Utils



data UtilsStatsSexAge = UtilsStatsSexAge
  { utilsStatsSexAge_AgeRange :: Maybe Text
  , utilsStatsSexAge_Female :: Maybe Int
  , utilsStatsSexAge_Male :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UtilsStatsSexAge where
  parseJSON = withObject "UtilsStatsSexAge" \o -> UtilsStatsSexAge
    <$> o .:? "age_range"
    <*> o .:? "female"
    <*> o .:? "male"
module VkApi.Objects.UsersMilitary where

import VkApi.Objects.Utils



data UsersMilitary = UsersMilitary
  { usersMilitary_Unit :: Text
  , usersMilitary_Id :: Maybe Int
  , usersMilitary_CountryId :: Int
  , usersMilitary_Until :: Maybe Int
  , usersMilitary_UnitId :: Int
  , usersMilitary_From :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON UsersMilitary where
  parseJSON = withObject "UsersMilitary" \o -> UsersMilitary
    <$> o .: "unit"
    <*> o .:? "id"
    <*> o .: "country_id"
    <*> o .:? "until"
    <*> o .: "unit_id"
    <*> o .:? "from"
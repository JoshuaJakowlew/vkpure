module VkApi.Objects.CallbackGroupOfficersEdit where

import VkApi.Objects.Utils

import VkApi.Objects.CallbackGroupOfficerRole

data CallbackGroupOfficersEdit = CallbackGroupOfficersEdit
  { callbackGroupOfficersEdit_UserId :: Int
  , callbackGroupOfficersEdit_AdminId :: Int
  , callbackGroupOfficersEdit_LevelOld :: CallbackGroupOfficerRole
  , callbackGroupOfficersEdit_LevelNew :: CallbackGroupOfficerRole
  } deriving (Show, Generic)

instance FromJSON CallbackGroupOfficersEdit where
  parseJSON = withObject "CallbackGroupOfficersEdit" \o -> CallbackGroupOfficersEdit
    <$> o .: "user_id"
    <*> o .: "admin_id"
    <*> o .: "level_old"
    <*> o .: "level_new"
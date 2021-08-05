module VkApi.Objects.UsersUserType where

import VkApi.Objects.Utils



data UsersUserType = UsersUserTypeProfile
  deriving (Show, Generic)

instance FromJSON UsersUserType where
  parseJSON = withText "UsersUserType" \ t -> case t of 
    "profile" -> pure UsersUserTypeProfile
    _ -> fail "UsersUserType: doesnt match case"

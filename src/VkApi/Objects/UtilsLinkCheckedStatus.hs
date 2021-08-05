module VkApi.Objects.UtilsLinkCheckedStatus where

import VkApi.Objects.Utils



data UtilsLinkCheckedStatus = UtilsLinkCheckedStatusNotBanned | UtilsLinkCheckedStatusBanned | UtilsLinkCheckedStatusProcessing
  deriving (Show, Generic)

instance FromJSON UtilsLinkCheckedStatus where
  parseJSON = withText "UtilsLinkCheckedStatus" \ t -> case t of 
    "not_banned" -> pure UtilsLinkCheckedStatusNotBanned
    "banned" -> pure UtilsLinkCheckedStatusBanned
    "processing" -> pure UtilsLinkCheckedStatusProcessing
    _ -> fail "UtilsLinkCheckedStatus: doesnt match case"

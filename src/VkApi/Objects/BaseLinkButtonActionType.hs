module VkApi.Objects.BaseLinkButtonActionType where

import VkApi.Objects.Utils



data BaseLinkButtonActionType = BaseLinkButtonActionTypeOpenUrl
  deriving (Show, Generic)

instance FromJSON BaseLinkButtonActionType where
  parseJSON = withText "BaseLinkButtonActionType" \ t -> case t of 
    "open_url" -> pure BaseLinkButtonActionTypeOpenUrl
    _ -> fail "BaseLinkButtonActionType: doesnt match case"

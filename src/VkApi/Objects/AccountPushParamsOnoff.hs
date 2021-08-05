module VkApi.Objects.AccountPushParamsOnoff where

import VkApi.Objects.Utils



data AccountPushParamsOnoff = AccountPushParamsOnoffOn | AccountPushParamsOnoffOff
  deriving (Show, Generic)

instance FromJSON AccountPushParamsOnoff where
  parseJSON = withText "AccountPushParamsOnoff" \ t -> case t of 
    "on" -> pure AccountPushParamsOnoffOn
    "off" -> pure AccountPushParamsOnoffOff
    _ -> fail "AccountPushParamsOnoff: doesnt match case"

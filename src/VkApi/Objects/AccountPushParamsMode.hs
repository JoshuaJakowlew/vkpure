module VkApi.Objects.AccountPushParamsMode where

import VkApi.Objects.Utils



data AccountPushParamsMode = AccountPushParamsModeOn | AccountPushParamsModeOff | AccountPushParamsModeNoSound | AccountPushParamsModeNoText
  deriving (Show, Generic)

instance FromJSON AccountPushParamsMode where
  parseJSON = withText "AccountPushParamsMode" \ t -> case t of 
    "on" -> pure AccountPushParamsModeOn
    "off" -> pure AccountPushParamsModeOff
    "no_sound" -> pure AccountPushParamsModeNoSound
    "no_text" -> pure AccountPushParamsModeNoText
    _ -> fail "AccountPushParamsMode: doesnt match case"

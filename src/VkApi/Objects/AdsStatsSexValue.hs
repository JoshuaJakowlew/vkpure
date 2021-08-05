module VkApi.Objects.AdsStatsSexValue where

import VkApi.Objects.Utils



data AdsStatsSexValue = AdsStatsSexValueF | AdsStatsSexValueM
  deriving (Show, Generic)

instance FromJSON AdsStatsSexValue where
  parseJSON = withText "AdsStatsSexValue" \ t -> case t of 
    "f" -> pure AdsStatsSexValueF
    "m" -> pure AdsStatsSexValueM
    _ -> fail "AdsStatsSexValue: doesnt match case"

module VkApi.Objects.GroupsMarketState where

import VkApi.Objects.Utils



data GroupsMarketState = GroupsMarketStateNone | GroupsMarketStateBasic | GroupsMarketStateAdvanced
  deriving (Show, Generic)

instance FromJSON GroupsMarketState where
  parseJSON = withText "GroupsMarketState" \ t -> case t of 
    "none" -> pure GroupsMarketStateNone
    "basic" -> pure GroupsMarketStateBasic
    "advanced" -> pure GroupsMarketStateAdvanced
    _ -> fail "GroupsMarketState: doesnt match case"

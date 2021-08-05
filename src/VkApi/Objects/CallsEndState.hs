module VkApi.Objects.CallsEndState where

import VkApi.Objects.Utils



data CallsEndState = CallsEndStateCanceledByInitiator | CallsEndStateCanceledByReceiver | CallsEndStateReached
  deriving (Show, Generic)

instance FromJSON CallsEndState where
  parseJSON = withText "CallsEndState" \ t -> case t of 
    "canceled_by_initiator" -> pure CallsEndStateCanceledByInitiator
    "canceled_by_receiver" -> pure CallsEndStateCanceledByReceiver
    "reached" -> pure CallsEndStateReached
    _ -> fail "CallsEndState: doesnt match case"

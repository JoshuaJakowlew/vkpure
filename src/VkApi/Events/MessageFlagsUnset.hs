{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.MessageFlagsUnset where

import VkApi.Internal.Json
import VkPure.Prelude
import qualified VkApi.Events.Message as Message
import qualified VkApi.Events.MessageFlagsSet as MessageFlagsSet

data Event
  = Flags MessageFlagsSet.Event
  | Message Message.Event
  deriving (Show, Generic)

deriveJSON' ''Event
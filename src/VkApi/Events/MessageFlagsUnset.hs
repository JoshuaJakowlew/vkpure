{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.MessageFlagsUnset where

import VkApi.Internal.Json
import VkPure.Prelude
import VkApi.Events.Message         qualified as Message
import VkApi.Events.MessageFlagsSet qualified as MessageFlagsSet

data Event
  = Flags MessageFlagsSet.Event
  | Message Message.Event
  deriving (Show, Generic)

deriveJSON' ''Event
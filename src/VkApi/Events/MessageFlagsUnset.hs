{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.MessageFlagsUnset where
import Data.Aeson ( FromJSON, ToJSON )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkApi.Events.Message         qualified as Message
import VkApi.Events.MessageFlagsSet qualified as MessageFlagsSet
import VkPure.Prelude

data Event
  = Flags MessageFlagsSet.Event
  | Message Message.Event
  deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake Event


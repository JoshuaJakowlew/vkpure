{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.ConversationFlagsUnset where
import Data.Aeson ( FromJSON, ToJSON )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkApi.Events.ConversationFlags
import VkPure.Prelude

newtype Event =
  Event ConversationFlags
  deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake Event
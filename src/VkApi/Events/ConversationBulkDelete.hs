{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.ConversationBulkDelete where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkPure.Prelude
import VkApi.Events.Parsing (parseWithIndex, withArrayByLength)
  
data Event = Event
  { peerId    :: Word32
  , lastMsgId :: Word32
  } deriving (Show, Generic)
  deriving ToJSON via CamelToSnake Event

instance FromJSON Event where
  parseJSON = withArrayByLength "ConversationBulkDeleteEvent" (>2) $ \arr -> do
    peerId    <-  arr `parseWithIndex` 1
    lastMsgId <-  arr `parseWithIndex` 2
    pure Event{..}
{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.ConversationPin where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkApi.Events.MajorId ( MajorId )
import VkPure.Prelude
import VkApi.Events.Parsing (parseWithIndex, withArrayByLength)
  
data Event = Event
  { peerId  :: Word32
  , majorId :: MajorId
  } deriving (Show, Generic)
  deriving ToJSON via CamelToSnake Event

instance FromJSON Event where
  parseJSON = withArrayByLength "ConversationBulkDeleteEvent" (>2) $ \arr -> do
    peerId  <-  arr `parseWithIndex` 2
    majorId <-  arr `parseWithIndex` 3
    pure Event{..}
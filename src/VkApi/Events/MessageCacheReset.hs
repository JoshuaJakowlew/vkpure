{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.MessageCacheReset where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkApi.Events.Parsing (parseWithIndex, withArrayByLength)
import VkPure.Prelude
  
newtype Event = Event
  { msgId   :: Word32
  } deriving (Show, Generic)
  deriving ToJSON via CamelToSnake Event

instance FromJSON Event where
  parseJSON = withArrayByLength "MessageCacheReset" (>1) $ \arr -> do
    msgId <-  arr `parseWithIndex` 1
    pure Event{..}
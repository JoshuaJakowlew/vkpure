{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.MessageFlagsSet where

import GHC.Generics
import Data.Aeson

import VkApi.Events.MessageFlags
import VkApi.Events.Parsing
import VkPure.Prelude

data Event =
  Event
    { msgId  :: Word32
    , flags  :: MessageFlags
    , peerId :: Int32
    } deriving (Show, Generic)
    deriving anyclass ToJSON

instance FromJSON Event where
  parseJSON = withArrayByLength "MessageFlagsSetEvent" (<5) $ \arr -> do
    msgId  <- arr `parseWithIndex` 1
    flags  <- arr `parseWithIndex` 2
    peerId <- arr `parseWithIndex` 3
    pure Event{..}
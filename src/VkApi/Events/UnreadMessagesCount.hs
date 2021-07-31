{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.UnreadMessagesCount where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )

import VkApi.Events.Parsing ( withArrayByLength, parseWithIndex )
import VkPure.Prelude


data Event =
  Event
    { peerId :: Int32
    , msgId  :: Word32
    , count  :: Word32
    } deriving (Show, Generic)
    deriving anyclass ToJSON

instance FromJSON Event where
  parseJSON = withArrayByLength "MessageFlagsSetEvent" (<4) $ \arr -> do
    peerId <- arr `parseWithIndex` 1
    msgId  <- arr `parseWithIndex` 2
    count  <- arr `parseWithIndex` 3
    pure Event{..}
  

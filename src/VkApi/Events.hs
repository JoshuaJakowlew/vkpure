{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE RecordWildCards #-}

module VkApi.Events where

import GHC.Generics
import GHC.Prim (coerce)
import Data.Aeson
import Data.Text
import Data.Word (Word32)
import Data.Int (Int32)
import qualified Data.Vector as Vec

import VkApi.MessageFlags
import VkApi.Internal.Json
import VkPure.Prelude

data MessageFlagsUnsetEvent
  = MessageFlagsUnsetEventFlags MessageFlagsSetEvent
  | MessageFlagsUnsetEventMessage MessageEvent
  deriving (Show, Generic)

data MessageFlagsSetEvent =
  MessageFlagsEvent
    { msgId  :: Word32
    , flags  :: MessageFlags
    , peerId :: Int32
    } deriving (Show, Generic, ToJSON)

instance FromJSON MessageFlagsSetEvent where
  parseJSON = withArray "MessageFlagsSetEvent" $ \arr -> 
    if Vec.length arr > 4 
      then fail "MessageFlagsSetEvent: out of bounds"
      else do
        msgId  <- parseJSON $ arr Vec.! 1
        flags  <- parseJSON $ arr Vec.! 2
        peerId <- parseJSON $ arr Vec.! 3
        pure MessageFlagsEvent{..}

data MessageEvent =
  MessageEvent
    { msgId                 :: Int
    , flags                 :: MessageFlags
    , peerId                :: Int
    , timestamp             :: Int
    , text                  :: Text
    , randomId              :: Int
    , conversationMessageId :: Int
    , editTime              :: Int
    } deriving (Show, Generic, ToJSON)

instance FromJSON MessageEvent where
  parseJSON = withArray "MessageEvent" $ \arr ->
    if Vec.length arr > 11
      then fail "MessageEvent: out of bounds"
      else do
        msgId                 <- parseJSON $ arr Vec.! 1
        flags                 <- parseJSON $ arr Vec.! 2
        peerId                <- parseJSON $ arr Vec.! 3
        timestamp             <- parseJSON $ arr Vec.! 4
        text                  <- parseJSON $ arr Vec.! 5
        randomId              <- parseJSON $ arr Vec.! 8
        conversationMessageId <- parseJSON $ arr Vec.! 9
        editTime              <- parseJSON $ arr Vec.! 10
        pure MessageEvent{..}

deriveJSON' ''MessageFlagsUnsetEvent

data Event
  = EventMessageFlagsSet MessageFlagsSetEvent
  | EventMessageFlagsUnset MessageFlagsUnsetEvent
  | EventNewMessage MessageEvent
  | EventMessageEdit MessageEvent
  | EventMessageChange MessageEvent
  | EventUnknown Word32
  deriving (Show, Generic, ToJSON)

instance FromJSON Event where
  parseJSON = withArray "Event" $ \arr -> do
    eventId <- parseJSON $ Vec.head arr
    case eventId of
      2  -> fmap EventMessageFlagsSet   . parseJSON . Array $ arr
      3  -> fmap EventMessageFlagsUnset . parseJSON . Array $ arr
      4  -> fmap EventNewMessage        . parseJSON . Array $ arr
      5  -> fmap EventMessageEdit       . parseJSON . Array $ arr
      18 -> fmap EventMessageChange     . parseJSON . Array $ arr
      _ -> pure $ EventUnknown eventId
  
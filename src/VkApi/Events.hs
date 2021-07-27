{-# LANGUAGE DeriveAnyClass #-}

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

data MessageEvent =
  MessageEvent
    { msgId                 :: Int
    , flags                 :: Word32
    , peerId                :: Int
    , timestamp             :: Int
    , text                  :: Text
    , randomId              :: Int
    , conversationMessageId :: Int
    , editTime              :: Int
    } deriving (Show, Generic)

deriveJSON' ''MessageEvent

data MessageFlagsEvent =
  MessageFlagsEvent
    { msgId  :: Word32
    , flags  :: MessageFlags
    , peerId :: Int32
    } deriving (Show, Generic)

deriveJSON' ''MessageFlagsEvent

data Event
  = EventNewMessage MessageEvent
  | EventMessageEdit MessageEvent
  | EventMessageChange MessageEvent
  | EventMessageFlagsSet MessageFlagsEvent
  | EventUnknown
  | EventError Int
  deriving (Show, Generic, ToJSON)

instance FromJSON Event where
  parseJSON v = pure $ parseEvent v  
  
isNumber (Number _) = True
isNumber _          = False

unwrapNum (Number x) = round x

unwrapText (String t) = t

parseEvent :: Value -> Event
parseEvent (Array arr) = let
  eventId = Vec.head arr
  in if not (isNumber eventId)
    then EventError $ unwrapNum eventId
    else case unwrapNum eventId of
      2  -> EventMessageFlagsSet $ parseMessageFlagsSet arr
      4  -> EventNewMessage $ parseMessage arr
      5  -> EventMessageEdit $ parseMessage arr
      18 -> EventMessageChange $ parseMessage arr
      _  -> EventUnknown
parseEvent _  = EventUnknown

parseMessage arr =
  MessageEvent
    { msgId                 = unwrapNum  $ arr Vec.! 1
    , flags                 = unwrapNum  $ arr Vec.! 2
    , peerId                = unwrapNum  $ arr Vec.! 3
    , timestamp             = unwrapNum  $ arr Vec.! 4
    , text                  = unwrapText $ arr Vec.! 5
    , randomId              = unwrapNum  $ arr Vec.! 8
    , conversationMessageId = unwrapNum  $ arr Vec.! 9
    , editTime              = unwrapNum  $ arr Vec.! 10
    }

parseMessageFlagsSet arr = 
  MessageFlagsEvent
    { msgId = unwrapNum $ arr Vec.! 1
    , flags = MessageFlags $ unwrapNum $ arr Vec.! 2
    , peerId = unwrapNum $ arr Vec.! 3
    }
{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Events where

import GHC.Generics
import Data.Aeson
import Data.Text
import Data.Word (Word32)
import qualified Data.Vector as Vec

import VkApi.MessageFlags
import VkApi.Internal.Json
import VkPure.Prelude

data Message =
  Message
    { msgId                 :: Int
    , flags                 :: Word32
    , peerId                :: Int
    , timestamp             :: Int
    , text                  :: Text
    , randomId              :: Int
    , conversationMessageId :: Int
    , editTime              :: Int
    } deriving (Show, Generic)

deriveJSON' ''Message

data Event
  = EventNewMessage Message
  | EventMessageEdit Message
  | EventMessageChange Message
  | EventUnknown
  deriving (Show, Generic, ToJSON)

  
isNumber (Number _) = True
isNumber _          = False

unwrapNum (Number x) = round x

unwrapText (String t) = t

parseEvent :: Value -> Event
parseEvent (Array arr) = let
  eventId = Vec.head arr
  in if not (isNumber eventId)
    then EventUnknown
    else case unwrapNum eventId of
      4  -> EventNewMessage $ parseMessage arr
      5  -> EventMessageEdit $ parseMessage arr
      18 -> EventMessageChange $ parseMessage arr
      _  -> EventUnknown
parseEvent _  = EventUnknown

parseMessage arr =
  Message
    { msgId                 = unwrapNum  $ arr Vec.! 1
    , flags                 = unwrapNum  $ arr Vec.! 2
    , peerId                = unwrapNum  $ arr Vec.! 3
    , timestamp             = unwrapNum  $ arr Vec.! 4
    , text                  = unwrapText $ arr Vec.! 5
    , randomId              = unwrapNum  $ arr Vec.! 8
    , conversationMessageId = unwrapNum  $ arr Vec.! 9
    , editTime              = unwrapNum  $ arr Vec.! 10
    }

instance FromJSON Event where
  parseJSON v = pure $ parseEvent v
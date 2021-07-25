{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Events where

import GHC.Generics
import Data.Aeson
import Data.Text
import qualified Data.Vector as Vec

import VkApi.Internal.Json
import VkPure.Prelude

data NewMessage =
  NewMessage
    { msgId                 :: Int
    , flags                 :: Int
    , peerId                :: Int
    , timestamp             :: Int
    , text                  :: Text
    , randomId              :: Int
    , conversationMessageId :: Int
    , editTime              :: Int
    } deriving (Show, Generic)

deriveJSON' ''NewMessage

data Event
  = EventNewMessage NewMessage
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
      id | id `elem` [3, 4, 5, 18] -> parseNewMessage arr
      _ -> EventUnknown
parseEvent _  = EventUnknown


parseNewMessage arr = EventNewMessage $
  NewMessage
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
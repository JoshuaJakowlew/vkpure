module VkApi.Events where

import GHC.Generics
import Data.Aeson
import Data.Text
import qualified Data.Vector as Vec

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


data Event
  = EventNewMessage NewMessage
  | Kek Int
  deriving (Show, Generic)

isNumber (Number _) = True
isNumber _          = False

unwrapNum (Number x) = round x

unwrapText (String t) = t

parseEvent :: Value -> Event
parseEvent (Array arr) = let
  eventId = Vec.head arr
  in if not (isNumber eventId)
    then Kek (-2)
    else case unwrapNum eventId of 
          3  -> parseNewMessage arr
          4  -> parseNewMessage arr
          5  -> parseNewMessage arr
          18 -> parseNewMessage arr
          x  -> Kek x
parseEvent _  = Kek (-1)


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

instance ToJSON Event where
  toJSON v = undefined
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE RecordWildCards #-}

module VkApi.Events where

import Data.Aeson
import qualified Data.Vector as Vec

import qualified VkApi.Events.Message as Message
import qualified VkApi.Events.MessageFlagsSet as MessageFlagsSet
import qualified VkApi.Events.MessageFlagsUnset as MessageFlagsUnset
import VkPure.Prelude

data Event
  = MessageFlagsSet   MessageFlagsSet.Event
  | MessageFlagsUnset MessageFlagsUnset.Event
  | NewMessage        Message.Event
  | MessageEdit       Message.Event
  | MessageChange     Message.Event
  | UnknownEvent Word32
  deriving (Show, Generic, ToJSON)

instance FromJSON Event where
 parseJSON = withArray "Event" $ \arr -> do
   eventId <- parseJSON $ Vec.head arr
   case eventId of
     2  -> parseEvent MessageFlagsSet   arr
     3  -> parseEvent MessageFlagsUnset arr
     4  -> parseEvent NewMessage        arr
     5  -> parseEvent MessageEdit       arr
     18 -> parseEvent MessageChange     arr
     _  -> pure $ UnknownEvent eventId
    where
      parseEvent e arr = fmap e . parseJSON . Array $ arr

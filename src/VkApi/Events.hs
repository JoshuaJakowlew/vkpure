{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE RecordWildCards #-}

module VkApi.Events where

import Data.Aeson ( FromJSON(parseJSON), Value(Array), ToJSON )
import Data.Vector qualified as Vec

import VkApi.Events.Message                qualified as Message
import VkApi.Events.MessageFlagsSet        qualified as MessageFlagsSet
import VkApi.Events.MessageFlagsUnset      qualified as MessageFlagsUnset
import VkApi.Events.UnreadMessagesCount    qualified as UnreadMessagesCount
import VkApi.Events.FriendOnline           qualified as FriendOnline
import VkApi.Events.FriendOffline          qualified as FriendOffline
import VkApi.Events.ConversationFlags      qualified as ConversationFlags
import VkApi.Events.ConversationBulkDelete qualified as ConversationBulkDelete
import VkApi.Events.Parsing ( withArrayByLength )
import VkPure.Prelude



data Event
  = MessageFlagsSet        MessageFlagsSet.Event
  | MessageFlagsUnset      MessageFlagsUnset.Event
  | NewMessage             Message.Event
  | MessageEdit            Message.Event
  | UnreadInboxMessages    UnreadMessagesCount.Event
  | UnreadOutboxMessages   UnreadMessagesCount.Event
  | FriendOnline           FriendOnline.Event
  | FriendOffline          FriendOffline.Event
  | ConversationFlagsUnset ConversationFlags.Event
  | ConversationFlagsSet   ConversationFlags.Event
  | ConversationBulkDelete ConversationBulkDelete.Event
  | MessageChange          Message.Event
  | UnknownEvent Word32
  deriving (Show, Generic, ToJSON)

instance FromJSON Event where
 parseJSON = withArrayByLength "Event" (> 0) $ \arr -> do
   eventId <- parseJSON $ Vec.head arr
   case eventId of
     2  -> parseEvent MessageFlagsSet        arr
     3  -> parseEvent MessageFlagsUnset      arr
     4  -> parseEvent NewMessage             arr
     5  -> parseEvent MessageEdit            arr
     6  -> parseEvent UnreadInboxMessages    arr
     7  -> parseEvent UnreadOutboxMessages   arr
     8  -> parseEvent FriendOnline           arr
     9  -> parseEvent FriendOffline          arr
     10 -> parseEvent ConversationFlagsUnset arr
     12 -> parseEvent ConversationFlagsSet   arr
     13 -> parseEvent ConversationBulkDelete arr
     18 -> parseEvent MessageChange          arr

     _  -> pure $ UnknownEvent eventId
    where
      parseEvent e arr = fmap e . parseJSON . Array $ arr

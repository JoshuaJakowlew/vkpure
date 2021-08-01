{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.ConversationFlags where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )
import Data.Bits (testBit, setBit)

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkApi.Events.Parsing ( withArrayByLength, parseWithIndex )
import VkPure.Prelude

data Event = Event
  { peerId :: Int32
  , flags  :: ConversationFlags
  } deriving (Show, Generic)
  deriving (ToJSON) via CamelToSnake Event

instance FromJSON Event where
  parseJSON = withArrayByLength "ConversationBulkDeleteEvent" (>2) $ \arr -> do
    peerId <-  arr `parseWithIndex` 1
    flags  <-  arr `parseWithIndex` 2
    pure Event{..}

newtype ConversationFlags = ConversationFlags Word32
  deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake ConversationFlags

-- is-functions

-- //TODO: Объединить с функцией из MessageFlags
testFlagBit :: Word32 -> ConversationFlags -> Bool
testFlagBit i (ConversationFlags x) = testBit x $ fromIntegral i

{-
Приходит при следующих действиях: (+ приходящий флаг)
1. Просмотрено упоминание (ответ на сообщение, пуш или @all) - 17408 (1024 + 16384)
2. Просмотрено исчезающее сообщение - 17408 (1024 + 16384)
-}
isNotificationRead :: ConversationFlags -> Bool
isNotificationRead x = isNewNotification x && testFlagBit 10 x

{-
Приходит при следующих событиях: (+ приходящий флаг)
1. Появилось упоминание (ответ на сообщение, пуш или @all) - 16384
2. Появилось исчезающее сообщение - 16384
-}
isNewNotification :: ConversationFlags -> Bool
isNewNotification = testFlagBit 14

-- Беседа была отмечена прочитанной 
isMarkedAsRead :: ConversationFlags -> Bool
isMarkedAsRead = testFlagBit 20

-- set-functions

-- //TODO: Объединить с функцией из MessageFlags
setFlagBit :: Word32 -> ConversationFlags -> ConversationFlags
setFlagBit i (ConversationFlags x) = coerce $ setBit x $ fromIntegral i

setNotificationRead :: ConversationFlags -> ConversationFlags
setNotificationRead = setNewNotification . setFlagBit 10

setNewNotification :: ConversationFlags -> ConversationFlags
setNewNotification = setFlagBit 14

setMarkedAsRead :: ConversationFlags -> ConversationFlags
setMarkedAsRead = setFlagBit 20
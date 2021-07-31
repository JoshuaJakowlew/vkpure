module VkApi.Events.ConversationFlags where

import Data.Aeson ( FromJSON, ToJSON )
import Data.Bits (testBit, setBit)

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkPure.Prelude

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
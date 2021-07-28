module VkApi.Events.MessageFlags where

import Data.Bits (testBit, setBit)
import GHC.Prim (coerce)

import VkPure.Prelude
import VkApi.Internal.Json

newtype MessageFlags = MessageFlags Word32
  deriving (Show, Generic)

deriveJSON' ''MessageFlags

-- is-functions

testFlagBit :: Word32 -> MessageFlags -> Bool
testFlagBit i (MessageFlags x) = testBit x $ fromIntegral i

isUnread :: MessageFlags -> Bool
isUnread = testFlagBit 0

isOutbox :: MessageFlags -> Bool
isOutbox = testFlagBit 1

isImportant :: MessageFlags -> Bool
isImportant = testFlagBit 3

isChatOutboxSentFromVkCom :: MessageFlags -> Bool
isChatOutboxSentFromVkCom = testFlagBit 4

isFromFriend :: MessageFlags -> Bool
isFromFriend = testFlagBit 5

isSpam :: MessageFlags -> Bool
isSpam = testFlagBit 6

isDeletedLocally :: MessageFlags -> Bool
isDeletedLocally = testFlagBit 7

isAudioListened :: MessageFlags -> Bool
isAudioListened = testFlagBit 12

isChatOutbox :: MessageFlags -> Bool
isChatOutbox = testFlagBit 13

isSpamCancelled :: MessageFlags -> Bool
isSpamCancelled = testFlagBit 15

isGroupWelcomeMessage :: MessageFlags -> Bool
isGroupWelcomeMessage = testFlagBit 16

isDeletedForAll :: MessageFlags -> Bool
isDeletedForAll = testFlagBit 17

isChatInbox :: MessageFlags -> Bool
isChatInbox = testFlagBit 19

isSilent :: MessageFlags -> Bool
isSilent = testFlagBit 20

isReply :: MessageFlags -> Bool
isReply = testFlagBit 21

-- set-functions

setFlagBit :: Word32 -> MessageFlags -> MessageFlags
setFlagBit i (MessageFlags x) = coerce $ setBit x $ fromIntegral i

setUnread :: MessageFlags -> MessageFlags
setUnread = setFlagBit 0
    
setOutbox :: MessageFlags -> MessageFlags
setOutbox = setFlagBit 1

setImportant :: MessageFlags -> MessageFlags
setImportant = setFlagBit 3

setChatOutboxSentFromVkCom :: MessageFlags -> MessageFlags
setChatOutboxSentFromVkCom = setFlagBit 4

setFromFriend :: MessageFlags -> MessageFlags
setFromFriend = setFlagBit 5

setSpam :: MessageFlags -> MessageFlags
setSpam = setFlagBit 6

setDeletedLocally :: MessageFlags -> MessageFlags
setDeletedLocally = setFlagBit 7

setAudioListened :: MessageFlags -> MessageFlags
setAudioListened = setFlagBit 12

setChatOutbox :: MessageFlags -> MessageFlags
setChatOutbox = setFlagBit 13

setSpamCancelled :: MessageFlags -> MessageFlags
setSpamCancelled = setFlagBit 15

setGroupWelcomeMessage :: MessageFlags -> MessageFlags
setGroupWelcomeMessage = setFlagBit 16

setDeletedForAll :: MessageFlags -> MessageFlags
setDeletedForAll = setFlagBit 17

setChatInbox :: MessageFlags -> MessageFlags
setChatInbox = setFlagBit 19

setSilent :: MessageFlags -> MessageFlags
setSilent = setFlagBit 20

setReply :: MessageFlags -> MessageFlags
setReply = setFlagBit 21
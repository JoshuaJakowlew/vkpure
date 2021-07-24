{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DuplicateRecordFields #-}

module VkApi.Types where

import Data.Text
import GHC.Generics

import VkApi.Internal.Json
import VkPure.Prelude

data VkApiSuccess a = VkSuccess
  { response :: a
  } deriving (Show, Generic)

data VkApiError a = VkError
  { error :: a
  } deriving (Show, Generic)

data VkApiResponse s e
  = VkSuccessResponse (VkApiSuccess s)
  | VkErrorResponse   (VkApiError   e)
  deriving (Show, Generic)

data User = User 
  { id              :: Int
  , firstName       :: Text
  , deactivated     :: Text
  , isClosed        :: Bool
  , lastName        :: Text
  , canAccessClosed :: Bool
  } deriving (Generic, Show)

data Message = Message
  { id                    :: Int
  , date                  :: Int
  , peer_id               :: Int
  , fromId                :: Int
  , text                  :: Text
  , randomId              :: Int
  , ref                   :: Text
  , refSource             :: Text
--  , messageAttachments           :: Array
  , important             :: Bool
--  , messageGeo                   :: Object
  , pyaload               :: Text
--  , messageKeyboard              :: Object
--  , messageFwdMessages           :: Array
--  , messageReplyMessage          :: Object
--  , messageAction                :: Object
  , adminAutorId          :: Int
  , conversationMessageId :: Int
  , isCropped             :: Bool
  , membersCount          :: Int
  , updateTime            :: Int
  , wasListened           :: Bool
  , pinnedAt              :: Int
  , messageTag            :: Text
  } deriving (Generic, Show)

foldMap deriveJSON' 
  [ ''User
  , ''Message
  , ''VkApiSuccess
  , ''VkApiError
  , ''VkApiResponse
  ]


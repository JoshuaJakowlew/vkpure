{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DuplicateRecordFields #-}

module VkApi.Types where

import Data.Aeson
import Data.Array
import Data.Aeson.TH
import Language.Haskell.TH
import Data.Text
import VkApi.Internal.Json

import VkPure.Prelude
import GHC.Generics

data VkSuccess a = VkSuccess
  { response :: a
  } deriving (Show, Generic)

data VkError a = VkError
  { error :: a
  } deriving (Show, Generic)

data VkResponse s e
  = VkSuccessResponse (VkSuccess s)
  | VkErrorResponse   (VkError   e)
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
  , ''VkSuccess
  , ''VkError
  , ''VkResponse
  ]


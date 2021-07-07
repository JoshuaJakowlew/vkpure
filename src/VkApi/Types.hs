{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

module VkApi.Types where

import Data.Aeson
import Data.Array
import Data.Aeson.TH
import GHC.Generics (Generic)
import Language.Haskell.TH
import Data.Text
import VkApi.Internal.Utils


data User = User 
  { userId              :: Int
  , userFirstName       :: Text
  , userDeactivated     :: Text
  , userIsClosed        :: Bool
  , userLastName        :: Text
  , userCanAccessClosed :: Bool
  } deriving (Generic, Show)

data Message = Message
  { messageId                    :: Int
  , messageDate                  :: Int
  , messagePeerId                :: Int
  , messageFromId                :: Int
  , messageText                  :: Text
  , messageRandomId              :: Int
  , messageRef                   :: Text
  , messageRefSource             :: Text
--  , messageAttachments           :: Array
  , messageImportant             :: Bool
--  , messageGeo                   :: Object
  , messagePyaload               :: Text
--  , messageKeyboard              :: Object
--  , messageFwdMessages           :: Array
--  , messageReplyMessage          :: Object
--  , messageAction                :: Object
  , messageAdminAutorId          :: Int
  , messageConversationMessageId :: Int
  , messageIsCropped             :: Bool
  , messageMembersCount          :: Int
  , messageUpdateTime            :: Int
  , messageWasListened           :: Bool
  , messagePinnedAt              :: Int
  , messageMessageTag            :: Text
  } deriving (Generic, Show)

foldMap deriveJSON' 
  [ ''User
  , ''Message
  ]


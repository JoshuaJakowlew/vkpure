module VkApi.Core
  ( Methods (..)
  , Token (..)
  , (!?)
  , methods
  ) where

import GHC.Generics
import Servant.Client
import Servant.Client.Generic
import Servant.API
import Servant.API.Generic
import Data.Aeson
import Data.Text

import VkApi.Messages qualified as Messages
import VkApi.Internal.Named
import VkPure.Prelude

type RequiredQueryParam = QueryParam' '[Required, Strict]

newtype Token      = Token Text
  deriving (Show, Generic)
  deriving newtype (ToJSON, FromJSON, ToHttpApiData)

newtype ApiVersion = ApiVersion Text
  deriving (Show, Generic)
  deriving newtype (ToJSON, FromJSON, ToHttpApiData)

type Api
  =  RequiredQueryParam "access_token" Token
  :> RequiredQueryParam "v" ApiVersion
  :> ToServantApi Methods

newtype Methods routes = Methods
  { getLongPollServer :: routes :- Messages.VkMessagesApi
  } deriving stock (Generic)


methods :: Token -> Methods (AsClientT ClientM)
methods token = fromServant $ client (Proxy @Api) token (ApiVersion "5.131")
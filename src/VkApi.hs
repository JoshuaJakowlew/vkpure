module VkApi 
  ( module VkApi.Auth
  , module VkApi.Messages
  , module VkApi.LongPoll
  , module VkApi.Types
  , module VkApi.Events
  , Methods (..)
  , Token (..)
  , (!?)
  , api
  ) where

import GHC.Generics
import Servant.Client
import Servant.Client.Generic
import Servant.API
import Servant.API.Generic
import Data.Aeson
import Data.Text
import Named

import VkApi.Auth 
import VkApi.Messages
import VkApi.LongPoll
import VkApi.Types
import VkApi.Events
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

data Methods routes = Methods 
  { getLongPollServer :: routes :- VkMessagesApi 
  } deriving stock (Generic)

client'
  :: Token
  -> ApiVersion
  -> "needPts"   :! Int
  -> "lpVersion" :! Int
  -> Maybe ("groupId" :! Int)
  -> ClientM (VkApiResponse GetLongPollServerResponse Value)
client' = client (Proxy @Api)

api :: Token -> Methods (AsClientT ClientM)
api token = fromServant $ client' token (ApiVersion "5.131")
{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Auth where

import Data.Proxy
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client hiding (Response)
import Named

import VkApi.Internal.Json
import VkApi.Internal.Named
import VkPure.Prelude 
import Data.Aeson

data Success = Success
  { accessToken :: Text
  , expiresIn   :: Int
  , userId      :: Int
  } deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake Success

data Error = Error
  {  error            :: Text
  ,  errorDescription :: Text 
  ,  errorType        :: Text 
  } deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake Error

data Response 
  = ResponseSuccess Success
  | ResponseError   Error
  deriving (Show, Generic)
  deriving (FromJSON, ToJSON) via CamelToSnake Response


type LogPassAuthApi   = "token"
  :> RequiredNamedParam "username"       "username"      Text
  :> RequiredNamedParam "password"       "password"      Text
  :> RequiredNamedParam "grantType"      "grant_type"    Text
  :> RequiredNamedParam "scope"          "scope"         Text
  :> RequiredNamedParam "clientId"       "client_id"     Int
  :> RequiredNamedParam "clientSecret"   "client_secret" Text
  :> RequiredNamedParam "twofaSupported" "2fa_supported" Int
  :> Get '[JSON] Response

logPassAuth 
  :: "username"       :! Text
  -> "password"       :! Text
  -> "grantType"      :! Text
  -> "scope"          :! Text
  -> "clientId"       :! Int 
  -> "clientSecret"   :! Text
  -> "twofaSupported" :! Int
  -> ClientM Response
logPassAuth = client (Proxy @LogPassAuthApi)


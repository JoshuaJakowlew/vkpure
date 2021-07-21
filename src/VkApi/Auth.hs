{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Auth where

import Data.Proxy
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client
import Named

import VkApi.Internal.Json
import VkApi.Internal.Named
import VkPure.Prelude 

data AuthPass = AuthPass
  { accessToken :: Text
  , expiresIn   :: Int
  , userId      :: Int
  } deriving (Show, Generic)

data AuthError = AuthError
  {  error            :: Text
  ,  errorDescription :: Text 
  ,  errorType        :: Text 
  } deriving (Show, Generic)

data LogPassAuthResponse 
  = LogPassAuthPass  AuthPass
  | LogPassAuthError AuthError
  deriving (Show, Generic)

deriveJSON' ''AuthPass
deriveJSON' ''AuthError
deriveJSON' ''LogPassAuthResponse

type LogPassAuthApi   = "token"
  :> RequiredNamedParam "username"       "username"      Text
  :> RequiredNamedParam "password"       "password"      Text
  :> RequiredNamedParam "grantType"      "grant_type"    Text
  :> RequiredNamedParam "scope"          "scope"         Text
  :> RequiredNamedParam "clientId"       "client_id"     Int
  :> RequiredNamedParam "clientSecret"   "client_secret" Text
  :> RequiredNamedParam "twofaSupported" "2fa_supported" Int
  :> Get '[JSON] LogPassAuthResponse

getLogPassAuth 
  ::  "username"       :! Text
  ->  "password"       :! Text
  ->  "grantType"      :! Text
  ->  "scope"          :! Text
  ->  "clientId"       :! Int 
  ->  "clientSecret"   :! Text
  ->  "twofaSupported" :! Int 
  -> ClientM LogPassAuthResponse
getLogPassAuth = client (Proxy @LogPassAuthApi)


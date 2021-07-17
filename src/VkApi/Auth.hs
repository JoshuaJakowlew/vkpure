{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Auth where

import Data.Aeson
import Data.Proxy
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Network.HTTP.Client.TLS

import VkPure.Prelude
import VkApi.Core
import VkApi.Internal.Utils

data UserCredentials = UserCredentials
  { login    :: Text
  , password :: Text
  } deriving (Show, Generic)

data LogPassAuthResponse = LogPassAuthResponse
  { accessToken :: Text
  , expiresIn   :: Int
  , userId      :: Int
  } deriving (Show, Generic)

deriveJSON' ''LogPassAuthResponse

type VkAuthApi = "token"
  :> RequiredQueryParam "username"      Text
  :> RequiredQueryParam "password"      Text
  :> RequiredQueryParam "grant_type"    Text
  :> RequiredQueryParam "scope"         Text
  :> RequiredQueryParam "client_id"     Int
  :> RequiredQueryParam "client_secret" Text
  :> RequiredQueryParam "2fa_supported" Int
  :> Get '[JSON] LogPassAuthResponse

getLogPassAuth :: Text -> Text -> Text -> Text -> Int -> Text -> Int -> ClientM LogPassAuthResponse
getLogPassAuth = client (Proxy @VkAuthApi)

logPassAuth :: UserCredentials -> ClientM LogPassAuthResponse
logPassAuth c = getLogPassAuth (login c) (password c) "password" "all" 2274003 "hHbZxrka2uZ6jB1inYsH" 1


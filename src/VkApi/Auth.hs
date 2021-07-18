{-# LANGUAGE DeriveAnyClass #-}

module VkApi.Auth where

import Data.Function
import Data.Aeson
import Data.Kind
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
  = LogPassAuthPass AuthPass
  | LogPassAuthError AuthError
  deriving (Show, Generic)


deriveJSON' ''AuthPass
deriveJSON' ''AuthError
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

{- 

{
    "access_token": "748b2d5151bbf9a0dcc34cf444743897a56030c7079b328d5143d0200e55404f423422ba46ea7dfe306f1",
    "expires_in": 0,
    "user_id": 584134275
}

{
    "error": "invalid_client",
    "error_description": "Неправильный логин или пароль",
    "error_type": "username_or_password_is_incorrect"
}

-}
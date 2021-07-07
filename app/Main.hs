{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

module Main where
import VkApi.Internal.Utils
import Data.Aeson
import Data.Proxy
import GHC.Generics
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Servant.API
import Servant.Client
import Servant.Types.SourceT (foreach)
import Data.Text
import Network.HTTP.Client.TLS
import VkPure.Prelude 

import qualified Servant.Client.Streaming as S


type RequiredQueryParam = QueryParam' '[Required, Strict]

data VkResponse a = VkResponse
  { response :: a
  } deriving (Show, Generic)

deriveJSON' ''VkResponse

data Server = Server
  { key    :: Text
  , server :: Text
  , ts     :: Int
  } deriving (Show, Generic)

deriveJSON' ''Server

type API = "messages.getLongPollServer"
  :> RequiredQueryParam "need_pts"     Int
  :> RequiredQueryParam "lp_version"   Int
  :> QueryParam         "group_id"     Int
  :>> Get '[JSON] (VkResponse Server)

type a :>> b = a
    :> RequiredQueryParam "access_token" Token
    :> RequiredQueryParam "v"            Version
    :> b

newtype Token      = Token Text
  deriving (Show, Generic, ToJSON, FromJSON)

newtype ApiVersion = ApiVersion Text
  deriving (Show, Generic, ToJSON, FromJSON)

type VkClient a = Token -> ApiVersion -> ClientM a

-- 2uZGYz7zQZjZyS3x516p

posts :: Int -> Int -> Maybe Int -> VkClient (VkResponse Server)
posts = client (Proxy @API)



query = posts 0 Nothing 3 "TOKEN" "5.131"

run :: IO ()
run = do
  manager' <- newManager tlsManagerSettings
  res <- runClientM query (mkClientEnv manager' (BaseUrl Https "api.vk.com" 443 "method"))
  case res of
    Left err -> putStrLn $ "Error: " ++ show err
    Right message -> do
      print message


main :: IO ()
main = run




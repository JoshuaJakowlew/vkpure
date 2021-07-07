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

import qualified Servant.Client.Streaming as S


type RequiredQueryParam = QueryParam' '[Required, Strict]

data VkResponse a = VkResponse
  { vkResponseResponse :: a
  } deriving (Show, Generic)

deriveJSON' ''VkResponse

data Server = Server
  { serverKey    :: Text
  , serverServer :: Text
  , serverTs     :: Int
  } deriving (Show, Generic)

deriveJSON' ''Server

type API = "messages.getLongPollServer"
  :> RequiredQueryParam "need_pts" Int
  :> QueryParam "group_id" Int
  :> RequiredQueryParam "lp_version" Int
  :> RequiredQueryParam "access_token" Text
  :> RequiredQueryParam "v" Text
  -- :> Get Text
  :> Get '[JSON] (VkResponse Server)



posts :: Int -> Maybe Int -> Int -> Text -> Text -> ClientM (VkResponse Server)
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




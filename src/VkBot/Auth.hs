{-# LANGUAGE RecordWildCards #-}

module VkBot.Auth where

import Data.Aeson
import Data.Text
import GHC.Generics
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Either
import Servant.Client
import Servant.Client.Generic
import Named

import VkApi
import VkApi.Internal.Named
import VkBot.Utils
import VkPure.Prelude

data UserCredentials = UserCredentials
  { login    :: Text
  , password :: Text
  } deriving (Show, Generic)

runLogPassAuth :: UserCredentials -> IO (Either ClientError LogPassAuthResponse)
runLogPassAuth = runQuery "oauth.vk.com"  "" . logPassAuth

logPassAuth :: UserCredentials -> ClientM LogPassAuthResponse
logPassAuth c = getLogPassAuth ! param #username       (c ^. #login) 
                               ! param #password       (c ^. #password)
                               ! param #grantType      "password"
                               ! param #scope          "all"
                               ! param #clientId       2274003
                               ! param #clientSecret   "hHbZxrka2uZ6jB1inYsH"
                               ! param #twofaSupported 1 


                        

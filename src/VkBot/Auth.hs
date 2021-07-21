{-# LANGUAGE RecordWildCards #-}

module VkBot.Auth
  ( UserCredentials(..)
  , runLogPassAuth
  ) where

import Data.Text
import GHC.Generics
import Servant.Client
import Named

import VkApi
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


                        

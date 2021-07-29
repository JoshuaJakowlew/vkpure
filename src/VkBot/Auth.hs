{-# LANGUAGE RecordWildCards #-}

module VkBot.Auth
  ( UserCredentials(..)
  , run
  ) where

import Data.Text
import GHC.Generics
import Servant.Client
import Named

import VkApi.Auth qualified as Auth
import VkBot.Utils
import VkPure.Prelude

data UserCredentials = UserCredentials
  { login    :: Text
  , password :: Text
  } deriving (Show, Generic)

run :: UserCredentials -> IO (Either ClientError Auth.Response)
run = runQuery "oauth.vk.com"  "" . logPassAuth

logPassAuth :: UserCredentials -> ClientM Auth.Response
logPassAuth c = Auth.logPassAuth ! param #username       (c ^. #login) 
                                 ! param #password       (c ^. #password)
                                 ! param #grantType      "password"
                                 ! param #scope          "all"
                                 ! param #clientId       2274003
                                 ! param #clientSecret   "hHbZxrka2uZ6jB1inYsH"
                                 ! param #twofaSupported 1 


                        

{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RecordWildCards #-}

module Main where
  
import Data.Monoid((<>))
import Data.Aeson
import Data.Text
import GHC.Generics
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Servant.API
import Servant.API.Generic
import Servant.Client
import Servant.Client.Generic
import Servant.Types.SourceT (foreach)
import Data.Text
import Network.HTTP.Client.TLS
import qualified Servant.Client.Streaming as S
import Named
import Data.Maybe (fromJust)
import Control.Monad.Trans.Maybe
import Control.Monad
import Control.Monad.IO.Class (liftIO)

import VkPure.Prelude 
import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Methods
import VkApi.Auth
import VkApi.Core
import VkApi.LongPoll
import VkBot.Utils
import VkBot.Auth



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

  
maybe' ::  String -> IO (Maybe a)  -> IO ()  
maybe' s v = v >>= \case
  Just _ -> pure ()
  Nothing -> putStrLn s
  
main :: IO ()
main = maybe' "failed" . runMaybeT $ do
  auth <- unwrap $ runLogPassAuth user
  
  case auth of
    LogPassAuthPass(AuthPass{..}) -> do
      liftIO $ print auth
      let vk = api $ Token accessToken
      
      server <- longPollServer vk
      case server of
        VkSuccessResponse(VkSuccess s) -> do
          liftIO $ print s
          
          event <- longPollCall s
          case event of
            LongPollResponseSuccess(e) -> liftIO $ print e
            _ -> liftIO $ print "Do you like what you see?"
          
        _ -> liftIO $ print "Fuck you, leatherman"
    _ -> liftIO $ putStrLn "Auth error"

longPollCall :: LongPollServer -> MaybeT IO LongPollResponse
longPollCall s = unwrap . runLp s $ longPoll
                                  ! param #version 10
                                  ! param #mode    234
                                  ! param #act     "a_check"
                                  ! param #key     (s ^. #key)
                                  ! param #wait    10
                                  ! param #ts      (s ^. #ts)

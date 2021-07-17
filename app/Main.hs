{-# OPTIONS_GHC -F -pgmF=record-dot-preprocessor #-}
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

import Prelude 
import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Methods
import VkApi.Auth
import VkApi.Core
import VkApi.LongPoll
import VkBot.Utils



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"



unwrap (Right shit) = shit

main :: IO ()
main = do
  auth <- unwrap <$> (runLogPassAuth user)
  let token = accessToken auth

  let lp = api (Token token) 
  let bar = lp.getLongPollServer
  let foo = lp.getLongPollServer ! #needPts 0
  pure ()

  -- res <- runMethod $ ( lp.getLongPollServer )
  --   ! #need_pts   (0 :: Int) 
  --   ! #lp_version (3 :: Int)
  --   ! #group_id   (Nothing :: Maybe Int)

  -- case res of
  --   Left err      -> putStrLn $ "Error: " <> show err
  --   Right serv -> do
  --     print serv  
  --     r <- runLp (serv.response) $ longPoll 10 234 "a_check" (serv.response.key) 10 (serv.response.ts)
  --     print r

-- https://server?act=a_check&key=key&ts=ts&wait=wait&mode=mode&version=version


{-

interface LongPollResult {
  // Приходит, если нет ошибок или при failed: 1
  ts?: number
  // Приходит, если нет ошибок и при наличии флага 32
  pts?: number
  // Приходит, если нет ошибок
  updates?: any[]

  failed?: 1 | 2 | 3 | 4

  // Приходят только при failed: 4
  min_version?: 0
  max_version?: 13
}

-}
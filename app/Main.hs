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
import Named.Internal
import Data.Maybe (fromJust)

import VkPure.Prelude 
import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Methods
import VkApi.Auth
import VkApi.Core
import VkApi.LongPoll
import VkBot.Utils



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

(!?):: forall a name b. (Maybe (NamedF Identity a name) -> b) -> Param ( name :! (Maybe a)) -> b
fn !? (Param (Arg x)) = fn $ (Arg @_ @name) <$> x

infixl 9 !?

unwrap (Right shit) = shit

fromResponse :: FromJSON a => Either ClientError a -> Maybe a
fromResponse (Right x) = Just x
fromResponse (Left (FailureResponse _ r)) = decode $ r ^. #responseBody
fromResponse _ = Nothing

main :: IO ()
main = do
  auth <- (runLogPassAuth user)
  print (fromResponse auth)
  pure ()

  -- let token = accessToken auth
  -- let lp = api (Token token) 
  -- res <- runMethod $ (lp ^. #getLongPollServer) 
  --     !  param #needPts   0
  --     !  param #lpVersion 3
  --     !? param #groupId   Nothing

  -- case res of
  --   Left err      -> putStrLn $ "Error: " <> show err
  --   Right serv -> do
  --     print serv  
  --     let resp = serv^. #response
  --     r <- runLp resp $ longPoll 10 234 "a_check" (resp ^. #key) 10 (resp ^. #ts)
  --     print r


-- https://server?act=a_check&key=key&ts=ts&wait=wait&mode=mode&version=version


{-

interface LongPollResult {
  // Приходит, если нет ошибок или при failed: 1
  ts?: number
  // Приходит, если нет ошибок и при наличии флага 32
  pts?: number
  // Приходит, если нет ошибок
Left (
  FailureResponse (
    Request {
      requestPath = (
        BaseUrl {
          baseUrlScheme = Https,
          baseUrlHost = "oauth.vk.com",
          baseUrlPort = 443,
          baseUrlPath = ""
        },
        "/token"
      ),
      requestQueryString = fromList [
        ("username",Just "8915634327"),
        ("password",Just "Vha8124s"),
        ("grant_type",Just "password"),
        ("scope",Just "all"),
        ("client_id",Just "2274003"),
        ("client_secret",Just "hHbZxrka2uZ6jB1inYsH"),
        ("2fa_supported",Just "1")
      ],
      requestBody = Nothing,
      requestAccept = fromList [application/json;charset=utf-8,application/json],
      requestHeaders = fromList []
  ),
  requestHttpVersion = HTTP/1.1, requestMethod = "GET"
  } 
  (Response 
    {responseStatusCode = Status 
  {statusCode = 401, statusMessage = "Unauthorized"}, 
  responseHeaders = fromList [("Server","kittenx"),("Date","Sat, 17 Jul 2021 22:32:47 GMT"),("Content-Type","application/json; charset=utf-8"),("Content-Length","117"),("Connection","keep-alive"),("X-Powered-By","KPHP/7.4.107880"),("Set-Cookie","remixir=DELETED; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/; domain=.vk.com; secure; HttpOnly"),("Set-Cookie","remixlang=7; expires=Sun, 17 Jul 2022 17:55:59 GMT; path=/; domain=.vk.com"),("Cache-control","no-store"),("Content-Encoding","gzip"),("Strict-Transport-Security","max-age=15768000")], responseHttpVersion = HTTP/1.1, responseBody = "{\"error\":\"invalid_client\",\"error_description\":\"Nome utente o password non corretti\",\"error_type\":\"username_or_password_is_incorrect\"}"}))















Left (
  FailureResponse (
    Request {
      requestPath = (
        BaseUrl {
          baseUrlScheme = Https,
          baseUrlHost = "oauth.vk.com",
          baseUrlPort = 443,
          baseUrlPath = ""
        },
        "/token"
      ),
      requestQueryString = fromList [("username",Just "8915634327"),("password",Just "Vha8124s"),("grant_type",Just "password"),("scope",Just "all"),("client_id",Just "2274003"),("client_secret",Just "hHbZxrka2uZ6jB1inYsH"),("2fa_supported",Just "1")],
      requestBody = Nothing,
      requestAccept = fromList [application/json;charset=utf-8,application/json],
      requestHeaders = fromList []
      ), requestHttpVersion = HTTP/1.1, requestMethod = "GET"}
      (
        Response {
          responseStatusCode = Status {
            statusCode = 401,
            statusMessage = "Unauthorized"
          },
          responseHeaders = fromList [
            ("Server","kittenx"),
            ("Date","Sat, 17 Jul 2021 22:32:47 GMT"),
            ("Content-Type","application/json; charset=utf-8"),
            ("Content-Length","117"),
            ("Connection","keep-alive"),
            ("X-Powered-By","KPHP/7.4.107880"),
            ("Set-Cookie","remixir=DELETED; expires=Thu, 01 Jan 1970 00:00:01 GMT; path=/; domain=.vk.com; secure; HttpOnly"),
            ("Set-Cookie","remixlang=7; expires=Sun, 17 Jul 2022 17:55:59 GMT; path=/; domain=.vk.com"),
            ("Cache-control","no-store"),
            ("Content-Encoding","gzip"),
            ("Strict-Transport-Security","max-age=15768000")
          ],
          responseHttpVersion = HTTP/1.1,
          responseBody = "{\"error\":\"invalid_client\",\"error_description\":\"Nome utente o password non corretti\",\"error_type\":\"username_or_password_is_incorrect\"}"}))
  updates?: any[]

  failed?: 1 | 2 | 3 | 4

  // Приходят только при failed: 4
  min_version?: 0
  max_version?: 13
}


\"error\":\"invalid_client\",
\"error_description\":\"Nome utente o password non corretti\",
\"error_type\":\"username_or_password_is_incorrect\"

-}
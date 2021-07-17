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
  -- fromResponse: игнорим ошибку серванта, плохо
  -- fromJust: по сути игнорим ветки ошибки серванта
  -- т.к. ветки с FailureResponse, InvalidContentTypeHeader
  -- UnsupportedContentType и DecodeFailure могут содержать данные
  auth <- fromJust . fromResponse <$> runLogPassAuth user
  print auth

  case auth of
    LogPassAuthResponse{..} -> do

      let vk = api $ Token accessToken
      serv <- fromJust . fromResponse <$> (runMethod $  (vk ^. #getLongPollServer)
                                                     !  param  #needPts   0
                                                     !  param  #lpVersion 3
                                                     !? param  #groupId   Nothing)
      print serv  
      -- А вот тут мы проигнорили возможную ошибку от вк
      let s = serv^. #response
      event <- fromJust . fromResponse <$> (runLp s $ longPoll
                                                    ! param #version 10
                                                    ! param #mode    234
                                                    ! param #act     "a_check"
                                                    ! param #key     (s ^. #key)
                                                    ! param #wait    10
                                                    ! param #ts      (s ^. #ts))
      print event
    -- Явный тип ошибки не дает ее игнорить
    LogPassAuthError{..} -> putStrLn "Auth error"

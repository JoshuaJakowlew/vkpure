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
  
import Control.Monad.Trans.Except
import Control.Monad
import Control.Monad.IO.Class (liftIO)
import Servant.Client
import Servant.Client.Generic

import VkPure.Prelude 
import VkApi
import VkBot.Utils
import VkBot.Auth
import qualified VkBot.LongPoll as LP

user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

either' :: Show e => IO (Either e a) -> IO ()
either' v = v >>= \case
  Left e -> print e
  _ -> pure ()

main :: IO ()
main = either' . runExceptT $ do
  s <- auth user >>= longPollServer

  fornever s \lp -> print lp
  

fornever :: GetLongPollServerResponse -> (LongPollSuccess -> IO ()) -> ExceptT ErrorType IO ()
fornever r act = do
  lp <- updates' r
  liftIO $ act lp
  let x = set #ts (lp ^. #ts) r
  fornever x act
  


updates' :: GetLongPollServerResponse -> ExceptT ErrorType IO LongPollSuccess
updates' s = (LP.getLongPollUpdates s) >>= \case
    LongPollResponseSuccess(e) -> pure e
    _ -> throwE "Do you like what you see?"

longPollServer :: Methods (AsClientT ClientM) -> ExceptT ErrorType IO GetLongPollServerResponse
longPollServer vk =
  (LP.longPollServer vk) >>= \case
    VkSuccessResponse(VkSuccess s) -> pure s
    _ -> throwE "Can't get long poll server"

auth :: UserCredentials -> ExceptT ErrorType IO (Methods (AsClientT ClientM))
auth user =
  (unwrap $ runLogPassAuth user) >>= \case
    LogPassAuthPass(AuthPass{..}) -> pure $ api $ Token accessToken
    _ -> throwE "Auth error"


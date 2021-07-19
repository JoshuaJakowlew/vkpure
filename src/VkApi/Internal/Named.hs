
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

module VkApi.Internal.Named where

import Control.Exception (throwIO)
import Data.Functor.Identity (Identity)
import Named (NamedF (..), (!), (:!))
import Servant.API (Capture, Get, JSON, QueryParam', Required, Strict, ToHttpApiData, (:>), Optional)
import Servant.API.Generic (Generic, (:-))
import Servant.Client (runClientM)
import Servant.Client.Generic (AsClientT, genericClientHoist)

import Prelude


type NCapture name path ty = Capture path (name :! ty)
type NQueryParam' types name path ty = QueryParam' types path (name :! ty)

type RequiredNamedParam name path ty = NQueryParam' [Required, Strict] name path ty
type OptionalNamedParam name path ty = NQueryParam' [Optional, Strict] name path ty


deriving newtype instance ToHttpApiData a => ToHttpApiData (name :! a)


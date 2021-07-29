
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
{-# OPTIONS_GHC -Wno-orphans #-}

module VkApi.Internal.Named where

import Data.Functor.Identity (Identity)
import Named.Internal
import Servant.API (Capture, QueryParam', Required, Strict, ToHttpApiData, Optional)

import Prelude

type NCapture name path ty = Capture path (name :! ty)
type NQueryParam' types name path ty = QueryParam' types path (name :! ty)

type RequiredNamedParam name path ty = NQueryParam' [Required, Strict] name path ty
type OptionalNamedParam name path ty = NQueryParam' [Optional, Strict] name path ty

deriving newtype instance ToHttpApiData a => ToHttpApiData (name :! a)

(!?):: forall a name b. (Maybe (NamedF Identity a name) -> b) -> Param ( name :! Maybe a) -> b
fn !? (Param (Arg x)) = fn $ (Arg @_ @name) <$> x

infixl 9 !?


module VkApi.Core where

import Data.Aeson
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client

import VkPure.Prelude

type RequiredQueryParam = QueryParam' '[Required, Strict]



newtype Token      = Token Text
  deriving (Show, Generic, ToJSON, FromJSON, ToHttpApiData)

newtype ApiVersion = ApiVersion Text
  deriving (Show, Generic, ToJSON, FromJSON, ToHttpApiData)




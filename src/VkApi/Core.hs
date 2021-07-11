module VkApi.Core where

import Data.Aeson
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client

type RequiredQueryParam = QueryParam' '[Required, Strict]

type a :>> b = a
    :> RequiredQueryParam "access_token" Token
    :> RequiredQueryParam "v"            ApiVersion
    :> b

newtype Token      = Token Text
  deriving (Show, Generic, ToJSON, FromJSON, ToHttpApiData)

newtype ApiVersion = ApiVersion Text
  deriving (Show, Generic, ToJSON, FromJSON, ToHttpApiData)

type VkClient a =  Token -> ApiVersion -> ClientM a 


{-
instance Functor VkClient where
  fmap f (VkClient g) = VkClient \token api -> f <$> g token api


instance Applicative VkClient where
  pure a = VkClient \ _ _ -> pure a
  (VkClient f) <*> (VkClient v) = VkClient \token api -> f token api <*> v token api


instance Monad VkClient where
  (VkClient v) >>= f = VkClient \token api -> (\a -> (runVkClient . f) a token api)  =<< v token api

f :: a -> VkClient b
f' :: a -> Token -> ApiVersion -> ClientM b

v :: Token -> ApiVersion -> ClientM a
-}

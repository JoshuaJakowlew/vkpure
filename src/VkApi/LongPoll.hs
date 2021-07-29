module VkApi.LongPoll where


import GHC.Generics
import Servant.API
import Servant.Client hiding (Response)
import Data.Text
import Named

import VkApi.Internal.Json
import VkApi.Internal.Named
import VkApi.Events
import VkPure.Prelude

data Success = Success
  { ts      :: Int
  , pts     :: Int
  , updates :: [Event]
  } deriving (Show, Generic)

data Error = Error
  { failed     :: Int
  , ts         :: Maybe Int
  , minVersion :: Maybe Int
  , maxVersion :: Maybe Int
  } deriving (Show, Generic)

data Response
  = ResponseSuccess Success
  | ResponseError   Error
  deriving (Show, Generic)

deriveJSON' ''Success
deriveJSON' ''Error
deriveJSON' ''Response

type LongPollRequestApi =
     RequiredNamedParam "version" "version" Int
  :> RequiredNamedParam "mode"    "mode"    Int
  :> RequiredNamedParam "act"     "act"     Text
  :> RequiredNamedParam "key"     "key"     Text
  :> RequiredNamedParam "wait"    "wait"    Int
  :> RequiredNamedParam "ts"      "ts"      Int
  :> Get '[JSON] Response

call ::
  "version" :! Int
  -> "mode" :! Int
  -> "act"  :! Text
  -> "key"  :! Text
  -> "wait" :! Int
  -> "ts"   :! Int
  -> ClientM Response
call = client (Proxy @LongPollRequestApi)

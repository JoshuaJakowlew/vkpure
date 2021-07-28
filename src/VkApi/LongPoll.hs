module VkApi.LongPoll where


import GHC.Generics
import Servant.API
import Servant.Client
import Data.Text
import Named

import VkApi.Internal.Json
import VkApi.Internal.Named
import VkApi.Events
import VkPure.Prelude

data LongPollSuccess = LongPollSuccess
  { ts      :: Int
  , pts     :: Int
  , updates :: [Event]
  } deriving (Show, Generic)

data LongPollError = LongPollError 
  { failed     :: Int
  , ts         :: Maybe Int
  , minVersion :: Maybe Int
  , maxVersion :: Maybe Int
  } deriving (Show, Generic)

data LongPollResponse
  = LongPollResponseSuccess LongPollSuccess
  | LongPollResponseError   LongPollError
  deriving (Show, Generic)

deriveJSON' ''LongPollSuccess
deriveJSON' ''LongPollError
deriveJSON' ''LongPollResponse

type LongPollRequestApi = 
     RequiredNamedParam "version" "version" Int
  :> RequiredNamedParam "mode"    "mode"    Int
  :> RequiredNamedParam "act"     "act"     Text
  :> RequiredNamedParam "key"     "key"     Text
  :> RequiredNamedParam "wait"    "wait"    Int
  :> RequiredNamedParam "ts"      "ts"      Int
  :> Get '[JSON] (LongPollResponse)

longPollRequest ::
  "version" :! Int 
  -> "mode" :! Int 
  -> "act"  :! Text 
  -> "key"  :! Text
  -> "wait" :! Int 
  -> "ts"   :! Int
  -> ClientM LongPollResponse
longPollRequest = client (Proxy @LongPollRequestApi)

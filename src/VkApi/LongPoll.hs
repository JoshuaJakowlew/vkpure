module VkApi.LongPoll where


import GHC.Generics
import Servant.API
import Servant.API.Generic
import Servant.Client
import Data.Text
import Data.Aeson


import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Core
import VkBot.Utils
import VkApi.Internal.Named
import VkPure.Prelude

data LongPollSuccess = LongPollSuccess
  { ts      :: Int
  , pts     :: Int
  , updates :: Value
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

type LongPollServerApi = 
     RequiredNamedParam "version" "version" Int
  :> RequiredNamedParam "mode"    "mode"    Int
  :> RequiredNamedParam "act"     "act"     Text
  :> RequiredNamedParam "key"     "key"     Text
  :> RequiredNamedParam "wait"    "wait"    Int
  :> RequiredNamedParam "ts"      "ts"      Int
  :> Get '[JSON] (LongPollResponse)

runLp :: LongPollServer -> ClientM a -> IO (Either ClientError a)
runLp server' = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (server server')

longPoll = client (Proxy @LongPollServerApi)
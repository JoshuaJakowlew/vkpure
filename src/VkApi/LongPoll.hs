module VkApi.LongPoll where


import GHC.Generics
import Servant.API
import Servant.API.Generic
import Servant.Client
import Data.Text


import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Core
import VkBot.Utils
import VkApi.Internal.Named
import VkPure.Prelude

data LongPollResult = LongPollResult
  { ts :: Maybe Int
  , pts :: Maybe Int
  , failed :: Maybe Int
  } deriving (Show, Generic)

deriveJSON' 'LongPollResult

type LongPollServerApi = 
     RequiredNamedParam "version" "version" Int
  :> RequiredNamedParam "mode"    "mode"    Int
  :> RequiredNamedParam "act"     "act"     Text
  :> RequiredNamedParam "key"     "key"     Text
  :> RequiredNamedParam "wait"    "wait"    Int
  :> RequiredNamedParam "ts"      "ts"      Int
  :> Get '[JSON] (LongPollResult)



runLp :: Server -> ClientM a -> IO (Either ClientError a)
runLp server' = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (server server')


longPoll = client (Proxy @LongPollServerApi)
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
import VkPure.Prelude

data LongPollResult = LongPollResult
  { ts :: Maybe Int
  , pts :: Maybe Int
  , failed :: Maybe Int
  } deriving (Show, Generic)

deriveJSON' 'LongPollResult

type LongPollServerApi = 
     RequiredQueryParam "version" Int
  :> RequiredQueryParam "mode"    Int
  :> RequiredQueryParam "act"     Text
  :> RequiredQueryParam "key"     Text
  :> RequiredQueryParam "wait"    Int
  :> RequiredQueryParam "ts"      Int
  :> Get '[JSON] (LongPollResult)



runLp :: Server -> ClientM a -> IO (Either ClientError a)
runLp server' = runQuery urlHost urlPath 
  where
    [urlHost, urlPath] = unpack <$> splitOn "/" (server server')


longPoll = client (Proxy @LongPollServerApi)
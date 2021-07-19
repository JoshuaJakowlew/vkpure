module VkBot.Utils where


import Data.Aeson
import Data.Text
import GHC.Generics
import Servant.API
import Servant.API.Generic
import Servant.Client
import Servant.Client.Generic
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Network.HTTP.Client.TLS
import Control.Monad.Trans.Maybe

import VkPure.Prelude
import VkApi.Auth
import VkApi.Methods
import VkApi.Core

unwrap :: (Monad m, FromJSON a) => m (Either ClientError a) -> MaybeT m a
unwrap = MaybeT . fmap fromResponse

fromResponse :: FromJSON a => Either ClientError a -> Maybe a
fromResponse (Right x) = Just x
fromResponse (Left (FailureResponse _ r)) = decode $ r ^. #responseBody
fromResponse _ = Nothing

runQuery :: String -> String -> ClientM a -> IO (Either ClientError a)
runQuery urlHost urlPath query  = do
  manager' <- newManager tlsManagerSettings
  runClientM query (mkClientEnv manager' (BaseUrl Https urlHost 443 urlPath))


runLogPassAuth :: UserCredentials -> IO (Either ClientError LogPassAuthResponse)
runLogPassAuth = runQuery "oauth.vk.com"  "" . logPassAuth


runVk = runQuery "api.vk.com"

runMethod = runVk "method"


client' = client (Proxy @Api)


api :: Token -> Methods (AsClientT ClientM)
api token = fromServant $ client' token (ApiVersion "5.131")
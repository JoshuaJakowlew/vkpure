module VkBot.Utils where


import Data.Aeson
import Data.Proxy
import Data.Text
import GHC.Generics
import Servant.API
import Servant.API.Generic
import Servant.Client
import Servant.Client.Generic
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Network.HTTP.Client.TLS

import VkPure.Prelude
import VkApi.Auth
import VkApi.Methods
import VkApi.Core


runQuery :: String -> String -> ClientM a -> IO (Either ClientError a)
runQuery urlHost urlPath query  = do
  manager' <- newManager tlsManagerSettings
  runClientM query (mkClientEnv manager' (BaseUrl Https urlHost 443 urlPath))


runLogPassAuth :: UserCredentials -> IO (Either ClientError LogPassAuthResponse)
runLogPassAuth = runQuery "oauth.vk.com"  "" . logPassAuth




client' = client (Proxy @Api)


api :: Token -> Methods (AsClientT ClientM)
api token = fromServant $ client' token (ApiVersion "5.131")
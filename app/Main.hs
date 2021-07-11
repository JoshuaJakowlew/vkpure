module Main where
  
import Data.Aeson
import Data.Proxy
import GHC.Generics
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Servant.API
import Servant.Client
import Servant.Types.SourceT (foreach)
import Data.Text
import Network.HTTP.Client.TLS
import qualified Servant.Client.Streaming as S

import VkPure.Prelude 
import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Auth
import VkApi.Core




-- (Text, Text) -> IO Token



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"



-- 7898090 AppId
-- 2uZGYz7zQZjZyS3x516p AppKey
-- https://oauth.vk.com/token?grant_type=password&scope=all&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH&2fa_supported=1&username=USERNAME&password=PASS




query :: ClientM (VkResponse Server)
query =  getLongPollServer 0 3 Nothing (Token "TOKEN") (ApiVersion "5.131")



run :: IO ()
run = do
  manager' <- newManager tlsManagerSettings
  res <- runClientM query (mkClientEnv manager' (BaseUrl Https "api.vk.com" 443 "method"))
  case res of
    Left err -> putStrLn $ "Error: " ++ show err
    Right message -> do
      print message


main :: IO ()
main = run


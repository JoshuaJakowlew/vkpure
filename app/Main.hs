

module Main where
  
import Data.Aeson
import Data.Proxy
import GHC.Generics
import Network.HTTP.Client (newManager, defaultManagerSettings)
import Servant.API
import Servant.API.Generic
import Servant.Client
import Servant.Client.Generic
import Servant.Types.SourceT (foreach)
import Data.Text
import Network.HTTP.Client.TLS
import qualified Servant.Client.Streaming as S

import VkPure.Prelude 
import VkApi.Internal.Utils
import VkApi.Messages
import VkApi.Auth
import VkApi.Core


import VkBot.Utils


-- (Text, Text) -> IO Token



user :: UserCredentials
user = UserCredentials "89156343277" "Vha8124s"

type Test r
  =  RequiredQueryParam "access_token" Token
  :> RequiredQueryParam "v" ApiVersion :> r

data Methods routes 
  = Methods 
    { longPollServer :: routes :- VkMessagesApi
    } deriving (Generic)

type Api =  RequiredQueryParam "access_token" Token
  :> RequiredQueryParam "v" ApiVersion :> ToServantApi Methods




api = client (Proxy @Api)


unwrap (Right shit) = shit


main :: IO ()
main = do
  auth <- unwrap <$> (runLogPassAuth user)
  let token = auth  ^. #accessToken

  let lp = api (Token token) (ApiVersion "5.131")
  let lp' = fromServant @Methods @(AsClientT _) lp
  
  
  res <- runQuery "api.vk.com" "method" $ ( lp'.longPollServer  ) 0 3 Nothing 
  
  case res of
    Left err -> putStrLn $ "Error: " ++ show err
    Right message -> do
      print message



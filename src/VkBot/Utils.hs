module VkBot.Utils where


import Data.Aeson
import Servant.Client
import Network.HTTP.Client (newManager)
import Network.HTTP.Client.TLS
import Control.Monad.Trans.Maybe

import VkPure.Prelude


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

runMethod :: ClientM a -> IO (Either ClientError a)
runMethod = runQuery "api.vk.com" "method"



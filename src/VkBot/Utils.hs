module VkBot.Utils where


import Data.Aeson
import Servant.Client
import Network.HTTP.Client (newManager)
import Network.HTTP.Client.TLS
import Control.Monad.Trans.Except
import Data.Text

import VkPure.Prelude

type ErrorType = Text

-- // TODO: Refactor me
fromMaybe :: e -> Maybe a -> Either e a
fromMaybe _ (Just x) = Right x
fromMaybe e _ = Left e

unwrap :: (Monad m, FromJSON a) => m (Either ClientError a) -> ExceptT ErrorType m a
unwrap = ExceptT . fmap fromResponse

fromResponse :: FromJSON a => Either ClientError a -> Either ErrorType a
fromResponse (Right x) = Right x
fromResponse (Left (FailureResponse _ r)) = fromMaybe "Cannot decode JSON" $ decode $ r ^. #responseBody
fromResponse _ = Left "Low level request error"

runQuery :: String -> String -> ClientM a -> IO (Either ClientError a)
runQuery urlHost urlPath query  = do
  manager' <- newManager tlsManagerSettings
  runClientM query (mkClientEnv manager' (BaseUrl Https urlHost 443 urlPath))

runMethod :: ClientM a -> IO (Either ClientError a)
runMethod = runQuery "api.vk.com" "method"



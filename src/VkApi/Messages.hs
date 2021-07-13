module VkApi.Messages where

import Data.Aeson
import Data.Proxy
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client

import VkApi.Core
import VkApi.Internal.Utils
import VkPure.Prelude

data VkResponse a = VkResponse
  { response :: a
  } deriving (Show, Generic)

deriveJSON' ''VkResponse

data Server = Server
  { key    :: Text
  , server :: Text
  , ts     :: Int
  } deriving (Show, Generic)

deriveJSON' ''Server

type VkMessagesApi = "messages.getLongPollServer"
  :> RequiredQueryParam "need_pts"   Int
  :> RequiredQueryParam "lp_version" Int
  :> QueryParam         "group_id"   Int
  :> Get '[JSON] (VkResponse Server)



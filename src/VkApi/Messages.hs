
module VkApi.Messages where

import Data.Aeson
import Data.Text
import GHC.Generics
import Servant.API
import Servant.Client

import VkApi.Core
import VkApi.Internal.Utils
import VkApi.Internal.Named
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
  :> RequiredNamedParam "needPts"   "need_pts"   Int
  :> RequiredNamedParam "lpVersion" "lp_version" Int
  :> OptionalNamedParam "groupId"   "group_id"   Int
  :> Get '[JSON] (VkResponse Server)

{-RequiredNamedParam-}
{-RequiredNamedParam-}
{-OptionalNamedParam-}

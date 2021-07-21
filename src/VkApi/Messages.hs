module VkApi.Messages where

import Data.Aeson
import Data.Text
import GHC.Generics
import Servant.API

import VkApi.Types
import VkApi.Internal.Json
import VkApi.Internal.Named
import VkPure.Prelude

data GetLongPollServerResponse = GetLongPollServerResponse
  { key    :: Text
  , server :: Text
  , ts     :: Int
  } deriving (Show, Generic)

deriveJSON' ''GetLongPollServerResponse

type VkMessagesApi = "messages.getLongPollServer"
  :> RequiredNamedParam "needPts"   "need_pts"   Int
  :> RequiredNamedParam "lpVersion" "lp_version" Int
  :> OptionalNamedParam "groupId"   "group_id"   Int
  :> Get '[JSON] (VkApiResponse GetLongPollServerResponse Value)
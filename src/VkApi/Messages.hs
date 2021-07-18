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

data VkSuccess a = VkSuccess
  { response :: a
  } deriving (Show, Generic)

data VkError a = VkError
  { error :: a
  } deriving (Show, Generic)

data VkResponse s e
  = VkSuccessResponse (VkSuccess s)
  | VkErrorResponse   (VkError   e)
  deriving (Show, Generic)

deriveJSON' ''VkSuccess
deriveJSON' ''VkError
deriveJSON' ''VkResponse

data LongPollServer = LongPollServer
  { key    :: Text
  , server :: Text
  , ts     :: Int
  } deriving (Show, Generic)

deriveJSON' ''LongPollServer



type VkMessagesApi = "messages.getLongPollServer"
  :> RequiredNamedParam "needPts"   "need_pts"   Int
  :> RequiredNamedParam "lpVersion" "lp_version" Int
  :> OptionalNamedParam "groupId"   "group_id"   Int
  :> Get '[JSON] (VkResponse LongPollServer Value)
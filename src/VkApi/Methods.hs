module VkApi.Methods where

import GHC.Generics
import Servant.API
import Servant.API.Generic

import VkApi.Messages
import VkApi.Core



type Api = RequiredQueryParam "access_token" Token
  :> RequiredQueryParam "v" ApiVersion
  :> ToServantApi Methods



data Methods routes 
  = Methods 
    { longPollServer :: routes :- VkMessagesApi
    } deriving (Generic)
module VkApi.Events.ConversationBulkDelete where

  import Data.Aeson ( FromJSON, ToJSON )

  import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
  import VkPure.Prelude
  
  data Event = Event
    { peerId    :: Word32
    , lastMsgId :: Word32
    } deriving (Show, Generic)
    deriving (FromJSON, ToJSON) via CamelToSnake Event
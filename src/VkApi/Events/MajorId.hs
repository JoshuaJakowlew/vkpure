module VkApi.Events.MajorId where

import Data.Aeson ( FromJSON(parseJSON), ToJSON, withScientific )
import Data.Maybe ( fromJust )
import Data.Scientific ( toBoundedInteger )

import VkApi.Internal.Json ( CamelToSnake(CamelToSnake) )
import VkPure.Prelude

data MajorId
  = Slot1
  | Slot2
  | Slot3
  | Slot4
  | Slot5
  | Unpinned
  deriving (Show, Generic)
  deriving ToJSON via CamelToSnake MajorId

instance FromJSON MajorId where
  parseJSON = withScientific "MajorId" $ \x -> do
    let msgId :: Word32 = fromJust . toBoundedInteger $ x
    case msgId of
      80 -> pure Slot1
      64 -> pure Slot2
      48 -> pure Slot3
      32 -> pure Slot4
      16 -> pure Slot5
      0  -> pure Unpinned
      _  -> fail "Invalid MajorId value"

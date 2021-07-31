{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.FriendOnline where

import Data.Aeson ( FromJSON(parseJSON), ToJSON, withScientific )
import Data.Scientific ( toBoundedInteger )
import Data.Maybe ( fromJust )

import VkApi.Events.Parsing ( withArrayByLength, parseWithIndex )
import VkPure.Prelude

data Platform
  = MobileVk
  | IPhone
  | IPad
  | Android
  | WindowsPhone
  | Windows8
  | VkCom
  | UnknownPlatform
  deriving (Show, Generic)
  deriving anyclass ToJSON

instance FromJSON Platform where
  parseJSON = withScientific "Platform"  $ \x -> do
    let platformId :: Word32 = fromJust . toBoundedInteger $ x
    case platformId of
      1 -> pure MobileVk
      2 -> pure IPhone
      3 -> pure IPad
      4 -> pure Android
      5 -> pure WindowsPhone
      6 -> pure Windows8
      7 -> pure VkCom
      _ -> pure UnknownPlatform

type Seconds = Word32

data Event =
  Event
    { userId  :: Int32
    , platform  :: Platform
    , timestamp :: Seconds
    , appId  :: Word32
    } deriving (Show, Generic)
    deriving anyclass ToJSON

instance FromJSON Event where
  parseJSON = withArrayByLength "FriendOnlineEvent" (>4) $ \arr -> do
    userId    <- negate <$> arr `parseWithIndex` 1
    platform  <-            arr `parseWithIndex` 2
    timestamp <-            arr `parseWithIndex` 3
    appId     <-            arr `parseWithIndex` 4
    pure Event{..}
{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.FriendOffline where

import Data.Aeson

import VkApi.Events.Parsing
import VkPure.Prelude

type Seconds = Word32

data Event =
  Event
    { userId     :: Int32
    , isTimeout  :: Bool
    , timestamp  :: Seconds
    , appId      :: Word32
    } deriving (Show, Generic)
    deriving anyclass ToJSON



instance FromJSON Event where
  parseJSON = withArrayByLength "FriendOnlineEvent" (>4) $ \arr -> do
    userId    <- negate    <$> arr `parseWithIndex` 1
    isTimeout <- intToBool <$> arr `parseWithIndex` 2
    timestamp <-               arr `parseWithIndex` 3
    appId     <-               arr `parseWithIndex` 4
    pure Event{..}

intToBool :: Int32 -> Bool
intToBool x 
  | x == 1 = True
  | x == 0 = False
intToBool _ = error "Why?"

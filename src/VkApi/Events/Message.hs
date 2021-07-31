{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.Message where

import Data.Aeson ( FromJSON(parseJSON), ToJSON )
import Data.Text ( Text )

import VkApi.Events.MessageFlags ( MessageFlags )
import VkApi.Events.Parsing ( withArrayByLength, parseWithIndex )
import VkPure.Prelude

data Event = Event
    { msgId                 :: Int
    , flags                 :: MessageFlags
    , peerId                :: Int
    , timestamp             :: Int
    , text                  :: Text
    , randomId              :: Int
    , conversationMessageId :: Int
    , editTime              :: Int
    } deriving (Show, Generic)
    deriving anyclass ToJSON

instance FromJSON Event where
  parseJSON = withArrayByLength "MessageEvent" (< 12) $ \arr -> do
    msgId                 <-  arr `parseWithIndex` 1
    flags                 <-  arr `parseWithIndex` 2
    peerId                <-  arr `parseWithIndex` 3
    timestamp             <-  arr `parseWithIndex` 4
    text                  <-  arr `parseWithIndex` 5
    randomId              <-  arr `parseWithIndex` 8
    conversationMessageId <-  arr `parseWithIndex` 9
    editTime              <-  arr `parseWithIndex` 10
    pure Event{..}

{-# LANGUAGE RecordWildCards #-}

module VkApi.Events.Parsing where

import Data.Aeson
import Data.Aeson.Types
import qualified Data.Vector as Vec
import Control.Category

import VkPure.Prelude


withArrayBy
  :: String
  -> (Array -> Bool)
  -> (Array -> Parser a)
  -> Value
  -> Parser a
withArrayBy name pred action = withArray name $ \arr -> 
    if pred arr
      then action arr
      else fail $ name <> ": out of bounds"

withArrayByLength 
  :: String
  -> (Int -> Bool)
  -> (Array -> Parser a)
  -> Value
  -> Parser a
withArrayByLength name pred = withArrayBy name (Vec.length >>> pred)

parseWithIndex arr i = parseJSON $ arr Vec.! i
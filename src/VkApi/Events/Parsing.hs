{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
module VkApi.Events.Parsing where

import Data.Aeson ( Array, FromJSON(parseJSON), Value, withArray )
import Data.Aeson.Types ( Parser )
import Data.Vector qualified as Vec
import Control.Category ( (>>>) )

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

parseWithIndex :: FromJSON a => Vec.Vector Value -> Int -> Parser a
parseWithIndex arr i = parseJSON $ arr Vec.! i
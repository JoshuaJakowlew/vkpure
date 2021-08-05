module VkApi.Objects.Utils
  ( module Data.Aeson
  , module Data.Text
  , module VkPure.Prelude
  , IntOrString(..)
  ) where



import Data.Aeson
import Data.Text (Text)
import VkPure.Prelude hiding ((.=))

data IntOrString = I Int | S Text
  deriving (Show, Generic)

instance  FromJSON IntOrString where
  parseJSON = genericParseJSON defaultOptions { sumEncoding  = UntaggedValue }
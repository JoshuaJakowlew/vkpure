module VkApi.Objects.BaseCropPhotoCrop where

import VkApi.Objects.Utils



data BaseCropPhotoCrop = BaseCropPhotoCrop
  { baseCropPhotoCrop_Y :: Double
  , baseCropPhotoCrop_X :: Double
  , baseCropPhotoCrop_X2 :: Double
  , baseCropPhotoCrop_Y2 :: Double
  } deriving (Show, Generic)

instance FromJSON BaseCropPhotoCrop where
  parseJSON = withObject "BaseCropPhotoCrop" \o -> BaseCropPhotoCrop
    <$> o .: "y"
    <*> o .: "x"
    <*> o .: "x2"
    <*> o .: "y2"
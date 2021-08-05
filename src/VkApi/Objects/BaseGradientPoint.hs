module VkApi.Objects.BaseGradientPoint where

import VkApi.Objects.Utils



data BaseGradientPoint = BaseGradientPoint
  { baseGradientPoint_Color :: Text
  , baseGradientPoint_Position :: Double
  } deriving (Show, Generic)

instance FromJSON BaseGradientPoint where
  parseJSON = withObject "BaseGradientPoint" \o -> BaseGradientPoint
    <$> o .: "color"
    <*> o .: "position"
module VkApi.Objects.PollsBackground where

import VkApi.Objects.Utils

import VkApi.Objects.BaseGradientPoint
import VkApi.Objects.BaseImage

data PollsBackground = PollsBackground
  { pollsBackground_Points :: Maybe [BaseGradientPoint]
  , pollsBackground_Height :: Maybe Int
  , pollsBackground_Images :: Maybe [BaseImage]
  , pollsBackground_Width :: Maybe Int
  , pollsBackground_Id :: Maybe Int
  , pollsBackground_Color :: Maybe Text
  , pollsBackground_Name :: Maybe Text
  , pollsBackground_Angle :: Maybe Int
  , pollsBackground_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON PollsBackground where
  parseJSON = withObject "PollsBackground" \o -> PollsBackground
    <$> o .:? "points"
    <*> o .:? "height"
    <*> o .:? "images"
    <*> o .:? "width"
    <*> o .:? "id"
    <*> o .:? "color"
    <*> o .:? "name"
    <*> o .:? "angle"
    <*> o .:? "type"
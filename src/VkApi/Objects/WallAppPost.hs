module VkApi.Objects.WallAppPost where

import VkApi.Objects.Utils



data WallAppPost = WallAppPost
  { wallAppPost_Photo604 :: Maybe Text
  , wallAppPost_Id :: Maybe Int
  , wallAppPost_Name :: Maybe Text
  , wallAppPost_Photo130 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON WallAppPost where
  parseJSON = withObject "WallAppPost" \o -> WallAppPost
    <$> o .:? "photo_604"
    <*> o .:? "id"
    <*> o .:? "name"
    <*> o .:? "photo_130"
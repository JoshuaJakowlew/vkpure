module VkApi.Objects.WallPostedPhoto where

import VkApi.Objects.Utils



data WallPostedPhoto = WallPostedPhoto
  { wallPostedPhoto_Photo604 :: Maybe Text
  , wallPostedPhoto_Id :: Maybe Int
  , wallPostedPhoto_Photo130 :: Maybe Text
  , wallPostedPhoto_OwnerId :: Maybe Int
  } deriving (Show, Generic)

instance FromJSON WallPostedPhoto where
  parseJSON = withObject "WallPostedPhoto" \o -> WallPostedPhoto
    <$> o .:? "photo_604"
    <*> o .:? "id"
    <*> o .:? "photo_130"
    <*> o .:? "owner_id"
module VkApi.Objects.WallGraffiti where

import VkApi.Objects.Utils



data WallGraffiti = WallGraffiti
  { wallGraffiti_Photo200 :: Maybe Text
  , wallGraffiti_Id :: Maybe Int
  , wallGraffiti_OwnerId :: Maybe Int
  , wallGraffiti_Photo586 :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON WallGraffiti where
  parseJSON = withObject "WallGraffiti" \o -> WallGraffiti
    <$> o .:? "photo_200"
    <*> o .:? "id"
    <*> o .:? "owner_id"
    <*> o .:? "photo_586"
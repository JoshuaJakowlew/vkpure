module VkApi.Objects.WallPostCopyright where

import VkApi.Objects.Utils



data WallPostCopyright = WallPostCopyright
  { wallPostCopyright_Link :: Text
  , wallPostCopyright_Id :: Maybe Int
  , wallPostCopyright_Name :: Text
  , wallPostCopyright_Type :: Text
  } deriving (Show, Generic)

instance FromJSON WallPostCopyright where
  parseJSON = withObject "WallPostCopyright" \o -> WallPostCopyright
    <$> o .: "link"
    <*> o .:? "id"
    <*> o .: "name"
    <*> o .: "type"
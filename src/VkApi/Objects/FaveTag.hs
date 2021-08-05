module VkApi.Objects.FaveTag where

import VkApi.Objects.Utils



data FaveTag = FaveTag
  { faveTag_Id :: Maybe Int
  , faveTag_Name :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON FaveTag where
  parseJSON = withObject "FaveTag" \o -> FaveTag
    <$> o .:? "id"
    <*> o .:? "name"
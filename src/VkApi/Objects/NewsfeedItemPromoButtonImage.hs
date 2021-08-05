module VkApi.Objects.NewsfeedItemPromoButtonImage where

import VkApi.Objects.Utils



data NewsfeedItemPromoButtonImage = NewsfeedItemPromoButtonImage
  { newsfeedItemPromoButtonImage_Height :: Maybe Int
  , newsfeedItemPromoButtonImage_Width :: Maybe Int
  , newsfeedItemPromoButtonImage_Url :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPromoButtonImage where
  parseJSON = withObject "NewsfeedItemPromoButtonImage" \o -> NewsfeedItemPromoButtonImage
    <$> o .:? "height"
    <*> o .:? "width"
    <*> o .:? "url"
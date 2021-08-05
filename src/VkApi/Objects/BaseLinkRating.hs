module VkApi.Objects.BaseLinkRating where

import VkApi.Objects.Utils



data BaseLinkRating = BaseLinkRating
  { baseLinkRating_ReviewsCount :: Maybe Int
  , baseLinkRating_Stars :: Maybe Double
  } deriving (Show, Generic)

instance FromJSON BaseLinkRating where
  parseJSON = withObject "BaseLinkRating" \o -> BaseLinkRating
    <$> o .:? "reviews_count"
    <*> o .:? "stars"
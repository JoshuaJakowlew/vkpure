module VkApi.Objects.NewsfeedItemPromoButtonAction where

import VkApi.Objects.Utils



data NewsfeedItemPromoButtonAction = NewsfeedItemPromoButtonAction
  { newsfeedItemPromoButtonAction_Target :: Maybe Text
  , newsfeedItemPromoButtonAction_Url :: Maybe Text
  , newsfeedItemPromoButtonAction_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON NewsfeedItemPromoButtonAction where
  parseJSON = withObject "NewsfeedItemPromoButtonAction" \o -> NewsfeedItemPromoButtonAction
    <$> o .:? "target"
    <*> o .:? "url"
    <*> o .:? "type"
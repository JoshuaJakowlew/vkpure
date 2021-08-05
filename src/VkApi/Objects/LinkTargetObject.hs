module VkApi.Objects.LinkTargetObject where

import VkApi.Objects.Utils



data LinkTargetObject = LinkTargetObject
  { linkTargetObject_ItemId :: Maybe Int
  , linkTargetObject_OwnerId :: Maybe Int
  , linkTargetObject_Type :: Maybe Text
  } deriving (Show, Generic)

instance FromJSON LinkTargetObject where
  parseJSON = withObject "LinkTargetObject" \o -> LinkTargetObject
    <$> o .:? "item_id"
    <*> o .:? "owner_id"
    <*> o .:? "type"
module VkApi.Objects.WallPostSourceType where

import VkApi.Objects.Utils



data WallPostSourceType = WallPostSourceTypeVk | WallPostSourceTypeWidget | WallPostSourceTypeApi | WallPostSourceTypeRss | WallPostSourceTypeSms | WallPostSourceTypeMvk
  deriving (Show, Generic)

instance FromJSON WallPostSourceType where
  parseJSON = withText "WallPostSourceType" \ t -> case t of 
    "vk" -> pure WallPostSourceTypeVk
    "widget" -> pure WallPostSourceTypeWidget
    "api" -> pure WallPostSourceTypeApi
    "rss" -> pure WallPostSourceTypeRss
    "sms" -> pure WallPostSourceTypeSms
    "mvk" -> pure WallPostSourceTypeMvk
    _ -> fail "WallPostSourceType: doesnt match case"

module VkApi.Objects.WallGetFilter where

import VkApi.Objects.Utils



data WallGetFilter = WallGetFilterOwner | WallGetFilterOthers | WallGetFilterAll | WallGetFilterPostponed | WallGetFilterSuggests | WallGetFilterArchived | WallGetFilterDonut
  deriving (Show, Generic)

instance FromJSON WallGetFilter where
  parseJSON = withText "WallGetFilter" \ t -> case t of 
    "owner" -> pure WallGetFilterOwner
    "others" -> pure WallGetFilterOthers
    "all" -> pure WallGetFilterAll
    "postponed" -> pure WallGetFilterPostponed
    "suggests" -> pure WallGetFilterSuggests
    "archived" -> pure WallGetFilterArchived
    "donut" -> pure WallGetFilterDonut
    _ -> fail "WallGetFilter: doesnt match case"

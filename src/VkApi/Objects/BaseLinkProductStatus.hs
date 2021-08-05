module VkApi.Objects.BaseLinkProductStatus where

import VkApi.Objects.Utils



data BaseLinkProductStatus = BaseLinkProductStatusActive | BaseLinkProductStatusBlocked | BaseLinkProductStatusSold | BaseLinkProductStatusDeleted | BaseLinkProductStatusArchived
  deriving (Show, Generic)

instance FromJSON BaseLinkProductStatus where
  parseJSON = withText "BaseLinkProductStatus" \ t -> case t of 
    "active" -> pure BaseLinkProductStatusActive
    "blocked" -> pure BaseLinkProductStatusBlocked
    "sold" -> pure BaseLinkProductStatusSold
    "deleted" -> pure BaseLinkProductStatusDeleted
    "archived" -> pure BaseLinkProductStatusArchived
    _ -> fail "BaseLinkProductStatus: doesnt match case"

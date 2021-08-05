module VkApi.Objects.FavePageType where

import VkApi.Objects.Utils



data FavePageType = FavePageTypeUser | FavePageTypeGroup | FavePageTypeHints
  deriving (Show, Generic)

instance FromJSON FavePageType where
  parseJSON = withText "FavePageType" \ t -> case t of 
    "user" -> pure FavePageTypeUser
    "group" -> pure FavePageTypeGroup
    "hints" -> pure FavePageTypeHints
    _ -> fail "FavePageType: doesnt match case"

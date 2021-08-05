module VkApi.Objects.AppsAppType where

import VkApi.Objects.Utils



data AppsAppType = AppsAppTypeApp | AppsAppTypeGame | AppsAppTypeSite | AppsAppTypeStandalone | AppsAppTypeVkApp | AppsAppTypeCommunityApp | AppsAppTypeHtml5Game | AppsAppTypeMiniApp
  deriving (Show, Generic)

instance FromJSON AppsAppType where
  parseJSON = withText "AppsAppType" \ t -> case t of 
    "app" -> pure AppsAppTypeApp
    "game" -> pure AppsAppTypeGame
    "site" -> pure AppsAppTypeSite
    "standalone" -> pure AppsAppTypeStandalone
    "vk_app" -> pure AppsAppTypeVkApp
    "community_app" -> pure AppsAppTypeCommunityApp
    "html5_game" -> pure AppsAppTypeHtml5Game
    "mini_app" -> pure AppsAppTypeMiniApp
    _ -> fail "AppsAppType: doesnt match case"

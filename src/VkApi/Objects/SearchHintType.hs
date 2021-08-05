module VkApi.Objects.SearchHintType where

import VkApi.Objects.Utils



data SearchHintType = SearchHintTypeGroup | SearchHintTypeProfile | SearchHintTypeVkApp | SearchHintTypeApp | SearchHintTypeHtml5Game | SearchHintTypeLink
  deriving (Show, Generic)

instance FromJSON SearchHintType where
  parseJSON = withText "SearchHintType" \ t -> case t of 
    "group" -> pure SearchHintTypeGroup
    "profile" -> pure SearchHintTypeProfile
    "vk_app" -> pure SearchHintTypeVkApp
    "app" -> pure SearchHintTypeApp
    "html5_game" -> pure SearchHintTypeHtml5Game
    "link" -> pure SearchHintTypeLink
    _ -> fail "SearchHintType: doesnt match case"

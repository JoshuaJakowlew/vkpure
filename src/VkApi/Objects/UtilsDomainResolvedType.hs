module VkApi.Objects.UtilsDomainResolvedType where

import VkApi.Objects.Utils



data UtilsDomainResolvedType = UtilsDomainResolvedTypeUser | UtilsDomainResolvedTypeGroup | UtilsDomainResolvedTypeApplication | UtilsDomainResolvedTypePage | UtilsDomainResolvedTypeVkApp | UtilsDomainResolvedTypeCommunityApplication
  deriving (Show, Generic)

instance FromJSON UtilsDomainResolvedType where
  parseJSON = withText "UtilsDomainResolvedType" \ t -> case t of 
    "user" -> pure UtilsDomainResolvedTypeUser
    "group" -> pure UtilsDomainResolvedTypeGroup
    "application" -> pure UtilsDomainResolvedTypeApplication
    "page" -> pure UtilsDomainResolvedTypePage
    "vk_app" -> pure UtilsDomainResolvedTypeVkApp
    "community_application" -> pure UtilsDomainResolvedTypeCommunityApplication
    _ -> fail "UtilsDomainResolvedType: doesnt match case"

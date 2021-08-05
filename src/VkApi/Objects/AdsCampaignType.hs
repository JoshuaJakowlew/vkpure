module VkApi.Objects.AdsCampaignType where

import VkApi.Objects.Utils



data AdsCampaignType = AdsCampaignTypeNormal | AdsCampaignTypeVkAppsManaged | AdsCampaignTypeMobileApps | AdsCampaignTypePromotedPosts | AdsCampaignTypeAdaptiveAds | AdsCampaignTypeStories
  deriving (Show, Generic)

instance FromJSON AdsCampaignType where
  parseJSON = withText "AdsCampaignType" \ t -> case t of 
    "normal" -> pure AdsCampaignTypeNormal
    "vk_apps_managed" -> pure AdsCampaignTypeVkAppsManaged
    "mobile_apps" -> pure AdsCampaignTypeMobileApps
    "promoted_posts" -> pure AdsCampaignTypePromotedPosts
    "adaptive_ads" -> pure AdsCampaignTypeAdaptiveAds
    "stories" -> pure AdsCampaignTypeStories
    _ -> fail "AdsCampaignType: doesnt match case"
